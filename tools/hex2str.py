#!/usr/bin/python
# encodes a string into little endian hex assembly to be pushed on the stack

import sys

# get the string from command line
hexString = sys.argv[1]

# split the string into sets of double words
splitSize = 8 # len of word
words = [hexString[i:i+splitSize] for i in range(0, len(hexString), splitSize)]

string = ""
splitSize = 2 # len of byte
for w in words:
    splitByte = [w[i:i+2] for i in range(0, len(w), 2)]
    splitByte = splitByte[::-1]
    for byte in splitByte:
        # convert to ascii and add to str
        string += (chr(int(byte,16)))
print(string)
