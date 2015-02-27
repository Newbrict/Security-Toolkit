#!/usr/bin/python
# encodes a string into little endian hex assembly to be pushed on the stack

import sys

# get the string from command line
string = sys.argv[1]

# reverse string
string = string[::-1]

# hexify the string
string = [hex(ord(char))[2:] for char in string]

# pad the string to be a multiple of 4
if len(string)%4 != 0:
    string = (['00']*4)[len(string)%4:] + string

# output our assembly
for i in range(0,len(string),4):
    print('push 0x'+''.join(string[i:i+4]))
