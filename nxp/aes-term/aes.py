import serial
from Crypto.Cipher import AES


PROMPT = "\nInput a 16-character string to be encrypted (or 'exit' to terminate): "
BLOCKLEN = 16

ERROR_NCHAR = "Error: string is not 16-character long!"

# Create cipher object to decrypt received string,
# using the same 16-byte key as in aes-nxp/main.c
hex_key = '\x2b\x7e\x15\x16\x28\xae\xd2\xa6\xab\xf7\x15\x88\x09\xcf\x4f\x3c'
cipher = AES.new(hex_key, AES.MODE_ECB)

# Specify device name and BaudRate
port = '/dev/tty.usbserial-A6Y3SYXN'
baudrate = 115200

# Open serial connection
with serial.Serial(port=port, baudrate=baudrate) as ser:

	while True:

		# Get text to be encrypted
		input_str = raw_input(PROMPT)

		# Terminate program if user asks to
		if input_str ==  "exit":
			break

		# Give error message if input text is not 16-byte long
		if len(input_str) != BLOCKLEN:
			print(ERROR_NCHAR)
			continue

		# Send text to be encrypted to MCU
		ser.write(input_str.encode())

		# while True:
		# 	ch = ser.read(1)
		# 	print(ch)

		# Receive encrypted text
		encrypted_str = ser.read(BLOCKLEN)

		# Decrypt received text for testing purpose
		decrypted_str = cipher.decrypt(encrypted_str)

		# Print output
		print("Decrypted string: {:s}".format(decrypted_str, len(decrypted_str)))

