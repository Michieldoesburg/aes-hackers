import visa
import sys
import time

class ScopeWrapper(object):
    scope = ""

    def __init__(self):
        super(ScopeWrapper, self).__init__()
        self.setup()

    def setup(self):
        # Get the USB device, e.g. 'USB0::0x1AB1::0x0588::DS1ED141904883'
        instruments = visa.get_instruments_list()
        usb = filter(lambda x: 'USB' in x, instruments)
        if len(usb) != 1:
            print 'Bad instrument list', instruments
            sys.exit(-1)
        self.scope = visa.instrument(usb[0], timeout=20, chunk_size=1024000) # bigger timeout for long mem

    def write(self, str):
        self.scope.write(str)
        time.sleep(.1)

    def read(self):
        return self.scope.read(encoding="Latin-1")