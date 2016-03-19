#!/usr/bin/env python

# // Update a CRC16-CCITT with 1-8 bits from a given byte
# uint16_t crc_update(uint16_t crc, uint8_t byte, uint8_t bits)
# {
#   crc = crc ^ (byte << 8);
#   while(bits--)
#     if((crc & 0x8000) == 0x8000) crc = (crc << 1) ^ 0x1021;
#     else crc = crc << 1;
#   crc = crc & 0xFFFF;
#   return crc;
# }

# Calculate the CRC
# crc = 0xFFFF;
# for(x = 0; x < 6 + payload_length; x++) crc = crc_update(crc, payload[x], 8);
# crc = crc_update(crc, payload[6 + payload_length] & 0x80, 1);
# crc = (crc << 8) | (crc >> 8);

// Configure PHY layer on pipe 0
void configure_phy(uint8_t config, uint8_t rf_setup, uint8_t rx_pw)
{
  write_register_byte(CONFIG, config);
  write_register_byte(RF_SETUP, rf_setup);
  write_register_byte(RX_PW_P0, rx_pw);
}