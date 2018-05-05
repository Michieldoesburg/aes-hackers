import numpy as np
import matplotlib.pyplot as plt
import pickle
import sys


# Declare consts
N_BYTES_STRING = 16       # No of bytes in plaintext string
N_BYTES_KEY = 128         # No of bytes in key
TRACE_LENGTH = 600000     # No of samples in a trace
KEY_RANGE = 256           # 8-bit key, 0-255 possible values
DOWNSAMPLE = 20           # Downsampling factor, lowering res, speeding up

# List of file names where traces can be found
#  DATA_PATH = '/Volumes/DATA/AES_power_traces/Batch1/'
DATA_PATH = '/Users/Carlo/Developer/NXP/Repositories/aes-hackers/attack/'
NUM_FILES = 1
TRACE_FILES = []

for i in range(NUM_FILES):
    TRACE_FILES.append('traces{}.pickle'.format(i))

s_box = np.asarray([
    0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
    0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
    0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
    0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
    0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
    0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
    0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
    0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
    0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
    0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
    0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
    0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
    0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
    0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
    0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
    0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16
])


def hamming_weight(n):
    n = int(n)
    c = 0
    while n:
        c += 1
        n &= n - 1
    return c


def load_traces(filename):
    print("Opening power traces")
    with open(DATA_PATH + filename, 'rb') as f:
        traces = pickle.load(f)

    # Clean broken traces
    for plain_text in traces.keys():
        if len(traces[plain_text]) != TRACE_LENGTH:
            del traces[plain_text]

    plain_texts = traces.keys()
    traces = np.stack(traces.values(), axis=0)

    # Downsample array
    traces = traces[:, ::DOWNSAMPLE]

    M_traces = len(plain_texts)

    return plain_texts, traces, M_traces


def hypothetical_power_from_plain_texts(plain_texts, M_traces, KEY_RANGE):
    # Calculate hypothetical power with hamming weight
    print("Calculating hypothetical power model")
    hyp_power = np.ndarray(shape=(M_traces, KEY_RANGE))
    for i in range(M_traces):
        for j in range(KEY_RANGE):
            hyp_value = s_box[int(plain_texts[i][0].encode("hex"), 16) ^ j]
            hyp_power[i, j] = hamming_weight(hyp_value)
    return hyp_power


def calculate_correlations(hyp_power, traces):
    # Calculate correlation between hypothetical
    # and actual power consumption
    print("Calculating correlation between actual power traces and hypthetical power model")

    correlation = np.ndarray(shape=(KEY_RANGE, TRACE_LENGTH / DOWNSAMPLE))
    sys.stdout.write("Current key: ")
    for i in range(KEY_RANGE):
        sys.stdout.write("{}".format(i))
        sys.stdout.flush()
        for j in range(TRACE_LENGTH / DOWNSAMPLE):
            corr = np.corrcoef(hyp_power[:, i], traces[:, j])[1, 0]
            correlation[i, j] = corr
        sys.stdout.write("\b" * len(str(i)))
    sys.stdout.write("\n")
    sys.stdout.flush()
    return correlation


def main():
    correlations = np.ndarray(shape=(
        len(TRACE_FILES),
        KEY_RANGE,
        TRACE_LENGTH / DOWNSAMPLE))

    for i, trace_file in enumerate(TRACE_FILES):
        plain_texts, traces, M_traces = load_traces(trace_file)

        # print("Plot all traces")
        # plt.plot(traces.T)
        # plt.show()

        hyp_power = hypothetical_power_from_plain_texts(
            plain_texts,
            M_traces,
            KEY_RANGE)

        correlations[i, :, :] = calculate_correlations(hyp_power, traces)

    correlation = np.mean(correlations, axis=0)

    # Find the indices of the max value in correlation
    # by doing an argmax of the flattened array and recasiting it to 2D
    print("Finding max correlation")  # ABS?
    max_index = np.unravel_index(np.abs(correlation).argmax(), correlation.shape)

    print("Max correlation at key guess: {}, time: {}".format(
        max_index[0], max_index[1]))

    print("Plotting correlations")
    for j in range(KEY_RANGE):
        if j == max_index[0]:
            continue
        else:
            plt.plot(correlation[j, :], alpha=.1)

    plt.plot(correlation[max_index[0], :])
    plt.xlabel('Sample')
    plt.ylabel('Correlation')
    plt.title('Correlation coefficient between trace and hypothetical value, max at key {}'.format(max_index[0]))

    plt.savefig('correlation.eps')
    plt.show()


if __name__ == '__main__':
    main()
