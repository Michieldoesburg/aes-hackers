# Simple command line interface for sending
# SCPI commands to RIGOL DS1000 series oscilloscopes
# Inspired by/copied from:
# http://www.cibomahto.com/2010/04/controlling-a-rigol-oscilloscope-using-linux-and-python/

import os


class usbtmc:
    """Simple implementation of a USBTMC device driver,
    in the style of visa.h"""

    def __init__(self, device):
        self.device = device
        self.FILE = os.open(device, os.O_RDWR)

        if not self.FILE:
            print("Could not open device")
            quit()

    def write(self, command):
        os.write(self.FILE, command)

    def read(self, length=4000):
        return os.read(self.FILE, length)

    def get_name(self):
        self.write(b"*IDN?")
        return self.read(900)

    def send_reset(self):
        self.write(b"*RST")


class RigolScope:
    """Class to control a Rigol DS1000 series oscilloscope"""
    def __init__(self, device):
        self.meas = usbtmc(device)

        self.name = self.meas.get_name()

        print(self.name)

    def write(self, command):
        """Send an arbitrary command directly to the scope"""
        self.meas.write(command)

    def read(self, command):
        """Read an arbitrary amount of data directly from the scope"""
        self.meas.write(command)
        return self.meas.read()

    def reset(self):
        """Reset the instrument"""
        self.meas.send_reset()


def main():
    scope = RigolScope('/dev/usbtmc0')
    while True:
        command = input('Scope >> ')

        if command == 'q':
            break

        if command.find('?') >= 0:
            answer = scope.read(bytes(command, 'ascii'))
            print(answer)
        else:
            scope.write(bytes(command, 'ascii'))


if __name__ == '__main__':
    main()
