"""
USAGE
  
  python genbgtext.py <letters-per-line> [lines]
  
DESCRIPTION

  If called like `python genbgtext <n> <m>`, it prints <m> lines each with <n> randomly
  generated characters. If <m> is not provided, 1 is used instead.
"""

import random
import string
import sys

allowed_characters = list(set(string.ascii_lowercase) - set(['k', 'w', 'q', 'x']))

if len(sys.argv) == 1:
  print("I need at least one argument.")
  sys.exit(1)

chars = int(sys.argv[1])
lines = 1
if len(sys.argv) == 3:
  lines = int(sys.argv[2])

for i in range(lines):
  line = ""
  for j in range(chars):
    line += allowed_characters[random.randrange(0, len(allowed_characters))]
  print(line)
