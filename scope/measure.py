from scope import RigolScope
import numpy as np
import matplotlib.pyplot as plt
import time


def main():
    scope = RigolScope('/dev/usbtmc0')

    # Reset scope
    scope.write(b"*RST")

    time.sleep(4)

    # Enable recording
    scope.write(b":FUNC:WREC:ENAB 1")

    # Start recording
    scope.write(b":FUNC:WREC:OPER RUN")
    time.sleep(3)
    # Stop recording
    scope.write(b":FUNC:WREC:OPER STOP")

    # Choose channel
    scope.write(b":WAV:SOUR CHAN1")
    # Choose mode
    scope.write(b"WAV:MODE NORM")
    # Choose format
    scope.write(b"WAV:FORM BYTE")

    # Choose start- and stopping point
    scope.write(b"WAV:STAR 1")
    scope.write(b"WAV:STOP 40")

    # Get data
    raw_data = scope.read(b"WAV:DATA?")

    data = np.frombuffer(raw_data, "B")
    plt.plot(data)

    plt.show()
if __name__ == "__main__":
    main()
