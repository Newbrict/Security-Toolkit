#!/usr/bin/python
# decimal to hex calculator

import sys

# get the string from command line
string = sys.argv[1]

# output conversion
print(hex(eval(string)))
