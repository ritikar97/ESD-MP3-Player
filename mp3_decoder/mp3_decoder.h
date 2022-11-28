#ifndef MP3_DECODER_H_INCLUDED
#define MP3_DECODER_H_INCLUDED

#include "common_defines.h"

unsigned char i2c_decoder_read(uint8_t addr);

void decoder_init();

void i2c_decoder_write(uint8_t addr, uint8_t wr_byte);

void i2c_decoder_start();

void i2c_decoder_play();

#endif // MP3_DECODER_H_INCLUDED
