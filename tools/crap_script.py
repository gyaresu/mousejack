#!/usr/bin/env python

import sys
#from lib import common
from lib.nrf24 import *
import logging
import array
import binascii

address = '\x07\x16\x91\xc9\x1f'
channel = int(sys.argv[1])
print channel

logging.basicConfig(level=10, format='[%(asctime)s.%(msecs)03d]  %(message)s', datefmt="%Y-%m-%d %H:%M:%S")

logging.debug('Using channels {0}'.format(', '.join(str(c) for c in [channel])))

radio = nrf24()
radio.enable_lna()
radio.set_channel(channel)
radio.enter_sniffer_mode(address)

#payload = '\x68\x65\x6C\x6F\x07\x16\x91\xc9\x1f'
payload = 'hello'
# hello == 104 101 108 108 111
# hello == '\x68\x65\x6C\x6F'

# [9, 1, 5, 15, 15, 15, 15, 7, 22, 145, 201, 31]

for i in range(0, 1):
    #print radio.transmit_payload('\x00\x40\x00\x08\xB8', 1, 5)
    print radio.transmit_payload('\x00\xC2\x02\x00\x00\x00\x00\x00\x00\x3C', 1, 5) # \x02 right click? 0x3C checksum
    print radio.transmit_payload('\x00\x40\x00\x08\xB8', 1, 5)
    print radio.transmit_payload('\x00\x40\x00\x08\xB8', 1, 5)
    print radio.transmit_payload('\x00\xC2\x01\x00\x00\x00\x00\x00\x00\x3D', 1, 5) #works
