import numpy as np
import matplotlib.pyplot as plt
import pickle

path = '/Volumes/DATA/AES_power_traces/non_highres/traces11.pickle'

with open(path, 'rb') as f:
    traces = pickle.load(f)

plt.plot(traces.values()[2], linewidth=.3)
plt.title('Power trace from microcontroller encrypting a 16 byte plaintext')
plt.savefig('power_trace.eps')

