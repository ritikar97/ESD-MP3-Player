#include "spi.h"
#include <stdio.h>

#define CS                  P3_4
#define LDAC                P3_5


void spi_enable_cs(void)
{
    CS = 0;
}

void spi_disable_cs(void)
{
    CS = 1;
}

void max_spi_clock_freq(void)
{
     SPCON &= ~SPR2;
}

void spi_init(void)
{
    SPCON = 0;
    spi_disable_cs();
    LDAC = 0;
    // configure the SCK to be Fclk_periph / 32 to run less than 400 KHz
    SPCON |= SPR2;
    SPCON &= ~SPR1;
    SPCON &= ~SPR0;
    // disable SS
    SPCON |= SSDIS;
    // configure the SPI as a master
    SPCON |= MSTR;
    // set the clock polarity to be low
    SPCON &= ~CPOL;
    // set the clock phase to be low
    SPCON &= ~CPHA;
    // enable the SPI
    SPCON |= SPEN;
}

/**
 * @brief The function writes a byte and then reads a byte
 * This function performs the necessary handshaking to send and receive a single byte.
 * @param data: data to be written to the MOSI line.
 */
uint8_t spi_byte(uint8_t data)
{
    LDAC = 0;
    SPDAT = data;
    // check if the SPIF bit is 1
    while((SPSTA & 0x80) == 0);
    return SPDAT;
}
