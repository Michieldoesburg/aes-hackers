import csv
import os
from ConfigParser import SafeConfigParser


class TraceRecorder(object):
    def __init__(self):
        super(TraceRecorder, self).__init__()
        self.directory = "D:/Temp/traces"
        self.trace_count_filename = "trace_count.txt"
        self.trace_count = "1"
        self.trace_count_file_path = self.directory + "/" + self.trace_count_filename

    def create_directory(self):
        if not os.path.exists(self.directory):
            os.makedirs(self.directory)

    def write_csv_file(self, data):
        with open(self.directory + "/" + self.trace_count, 'w+') as myfile:
            wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
            wr.writerow(data)
            myfile.close()

        # Update the trace count number in the file.
        with open(self.trace_count_file_path, 'w+') as file:
            self.trace_count = str(int(self.trace_count) + 1)
            file.write(self.trace_count)

    def setup(self):
        # Read the settings file
        config = SafeConfigParser()
        config.read('config.ini')
        self.directory = config.get('main', 'directory')

        # Create directory for the traces
        self.create_directory()

        # Check if the file that records the tracecount exists, if it doesn't then create it.
        if not os.path.exists(self.trace_count_file_path):
            file = open(self.trace_count_file_path, 'w')
            file.write(self.trace_count)
            file.close()
        else:
            file = open(self.trace_count_file_path, 'r')
            self.trace_count = file.read()
            file.close()

trace_recorder = TraceRecorder()
trace_recorder.setup()
for x in range(0, 100):
    trace_recorder.write_csv_file([1, 2, 3, 4, 5])