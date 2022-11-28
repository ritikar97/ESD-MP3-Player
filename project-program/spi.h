
#ifndef __SPI_H__
#define __SPI_H__

#include <stdint.h>
#include <stdlib.h>
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>

void max_spi_clock_freq(void);

void spi_init(void);

uint8_t spi_byte(uint8_t data);

void spi_disable_cs(void);

void spi_enable_cs(void);


#endif // __SPI_H__
