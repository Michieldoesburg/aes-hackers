#!/usr/bin/python

""" Download an IR remote signal from a Rigol DS1052E and
analyze it for a NEC protocol signal.
Ken Shirriff
http://righto.com
"""
import numpy as np
import matplotlib.pyplot as plt
import time

import ScopeWrapper
import TraceRecorder

scope_wrapper = ScopeWrapper()
trace_recorder = TraceRecorder()

scope_wrapper.write(":STOP")
scope_wrapper.write(":WAV:SOUR CHAN1")
scope_wrapper.write("WAV:MODE NORM")
scope_wrapper.write("WAV:FORM BYTE")

# Choose start- and stopping point
scope_wrapper.write("WAV:STAR 1")
scope_wrapper.write("WAV:STOP 1200")

scope_wrapper.write("WAV:DATA?")
result = scope_wrapper.read()

#print ':'.join(hex(ord(x))[2:] for x in result)

data = np.frombuffer(result[12:-1], 'B')
data_compounded = [(data[i] << 8) + data[i+1] for i in range(0, len(data), 2)]

trace_recorder.write_csv_file(data_compounded)



