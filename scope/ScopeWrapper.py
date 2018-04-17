import visa
import sys
import time
import numpy
import matplotlib.pyplot as plt

class ScopeWrapper(object):
    scope = ""

    def __init__(self):
        super(ScopeWrapper, self).__init__()
        self.setup()

    def setup(self):
        # Get the USB device, e.g. 'USB0::0x1AB1::0x0588::DS1ED141904883'
        instruments = visa.get_instruments_list()
        usb = filter(lambda x: 'USB' in x, instruments)
        #if len(usb) != 1:
        #    print 'Bad instrument list', instruments
        #    sys.exit(-1)
        self.scope = visa.instrument(u'USB0::0x1AB1::0x04CE::DS1ZA192409475::INSTR', timeout=20, chunk_size=1024000) # bigger timeout for long mem

    def write(self, str):
        self.scope.write(str)
        time.sleep(.1)

    def read(self):
        return self.scope.read(encoding="Latin-1")

    def start_recording(self):
        self.write(":SINGLE")

    def stop_recording(self):
        self.write(":STOP")

    def get_trace(self):
        final_trace = numpy.ndarray((0,))

        self.write(":WAV:SOUR CHAN1")

        self.write(":WAV:POIN:MODE RAW")

        self.write("WAV:FORM BYTE")

        """self.write("WAV:STAR 5500000")
        self.write("WAV:STOP 5750000")

        self.write(":WAV:DATA?")

        rawdata = self.read()

        rawdata = ''.join(rawdata)
        data = numpy.frombuffer(rawdata, 'B')
        temp = numpy.ndarray(shape=(data.shape[0] / 2))
        for i in range(0, data.shape[0], 2):
            temp[i / 2] = (data[i + 1] << 8) | data[i]

        data = temp[11:-1]"""

        for i in range(5700001, 6200000, 250000):
            print("START " + str(i))
            print("STOP " + str(i + 250000 - 1))
            self.write("WAV:STAR " + str(i))
            self.write("WAV:STOP " + str(i + 250000 - 1))

            self.write(":WAV:DATA?")

            rawdata = self.read()

            rawdata = ''.join(rawdata)
            data = numpy.frombuffer(rawdata, 'B')
            temp = numpy.ndarray(shape=(data.shape[0] / 2))
            for j in range(0, data.shape[0], 2):
                temp[j / 2] = (data[j + 1] << 8) | data[j]

            data = temp[11:-1]

            final_trace = numpy.concatenate((final_trace, data), 0)

            time.sleep(.1)

        print("START " + str(6200001))
        print("STOP " + str(6350000))
        self.write("WAV:STAR 6200001")
        self.write("WAV:STOP 6300000")

        self.write(":WAV:DATA?")

        rawdata = self.read()

        rawdata = ''.join(rawdata)
        data = numpy.frombuffer(rawdata, 'B')
        temp = numpy.ndarray(shape=(data.shape[0] / 2))
        for j in range(0, data.shape[0], 2):
            temp[j / 2] = (data[j + 1] << 8) | data[j]

        data = temp[11:-1]

        final_trace = numpy.concatenate((final_trace, data), 0)

        return final_trace