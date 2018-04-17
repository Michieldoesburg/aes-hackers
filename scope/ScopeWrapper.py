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

    @property
    def get_trace(self):
        self.write(":WAV:SOUR CHAN1")

        self.write(":WAV:POIN:MODE RAW")

        self.write("WAV:FORM BYTE")

        data = []

        for i in range(1, 12000000, 250000):
            print("START " + str(i))
            print("STOP " + str(i + 250000 - 1))
            self.write("WAV:STAR " + str(i))
            self.write("WAV:STOP " + str(i) + 250000 - 1)

            self.write(":WAV:DATA?")

            rawdata = self.read()

            rawdata = ''.join(rawdata)
            data = numpy.frombuffer(rawdata, 'B')
            temp = numpy.ndarray(shape=(data.shape[0] / 2))
            for i in range(0, data.shape[0], 2):
                temp[i / 2] = (data[i + 1] << 8) | data[i]

            temp = temp[11:-1]

        # data = temp[::-1]# * -1 + 255 # Get rid of preamble and stop byte
        plt.plot(data)
        plt.show()

        #self.write("WAV:DATA?")
        #result = self.read()
        return data