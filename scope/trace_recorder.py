import csv
import os

class trace_recorder(object):

    def __init__(self):
        super(trace_recorder, self).__init__()
        self.directory = "D:/Temp/traces"
        self.trace_count_filename = "trace_count.txt"
        self.trace_count = "0"

    def create_directory(self):
        if not os.path.exists(self.directory):
            os.makedirs(self.directory)

    def write_csv_file(self, data):
        with open(self.trace_count, 'w+') as myfile:
            wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
            wr.writerow(data)

    def setup(self):
        # Create directory for the traces
        self.create_directory()

        # Check if the file that records the tracecount exists, if it doesn't then create it.
        if not os.path.exists(self.directory + "/" + self.trace_count_filename):
            file = open(self.trace_count_filename, 'w')
            file.write("1")
            file.close()
        else:
            file = open(self.trace_count_filename, 'r')
            self.trace_count = file.read()

trace_recorder = trace_recorder()
trace_recorder.setup()
trace_recorder.write_csv_file([1,2, 3, 4, 5])