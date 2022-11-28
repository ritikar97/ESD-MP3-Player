/*
 * i2c.c - Functions to communicate using I2C protocol
 *
 * Author: Ritika Ramchandani <rira3427@colorado.edu>
 *
 */

#include "i2c.h"

#define WR_CMD (0xA0) /* Write command with RW = 0 */
#define RD_CMD (0xA1) /* Read command with RW = 1 */
#define WR_IO_EXP (0x70) /* Write to IO expander */
#define RD_IO_EXP (0x71) /* Read from IO expander */
#define PAGE_BLOCK (0x7) /* To extract page block from address */



/* Initial condition of SDA and SCL lines is high */
void i2c_init(void)
{
    SDA_High;
    SCL_High;
}


/* Start bit requires SDA to go low
 * while SCL is still high */
void i2c_start(void)
{
    SDA_High;
    SCL_High;
    delay_us(bitDelay/4);
    SDA_Low;
    delay_us(bitDelay/4);
}


/*
 * send_byte - Function to send bits of a given bytes
 * over I2c SDA and SCL lines
 *
 * Parameters -
 *  send_byte - data byte to be transferred
 *
 * Returns -
 * Value of SDA received (ACK)
 */
 __sbit send_byte(uint8_t send_byte)
{
    for(uint8_t i = 0; i < BYTE_SIZE; i++)
    {
        SCL_Low;
        delay_us(bitDelay/4);

        if((send_byte << i) & MSB)
        {
            SDA_High;
        }
        else
        {
            SDA_Low;
        }

        /* Toggling the SCL pin */
        delay_us(bitDelay/4);
        SCL_High;
        delay_us(bitDelay);
    }

    /* Receiving ACK */
    SCL_Low;
    SDA_High; /* To accept input */
    delay_us(bitDelay);

    /* Wait until ACK is received */
    while(SDA);
    SCL_High;

    /* Toggle SCL to low */
    delay_us(bitDelay/2);
    SCL_Low;
    delay_us(bitDelay/2);

    return SDA;
}


uint8_t read_byte()
{
     uint8_t rx_bit, rx_data = 0;
     for(uint8_t i = 0; i < BYTE_SIZE; i++)
    {
        SDA_High; /* To accept input */

        /* Toggling clock */
        SCL_Low;
        delay_us(bitDelay/2);
        SCL_High;

        rx_bit = SDA;
        rx_data |= (rx_bit << (7 - i)); /* MSB is received first */
        delay_us(bitDelay/4);
        SCL_Low;
        delay_us(bitDelay/4);
    }

    return rx_data;

}



void i2c_write_byte(uint16_t addr, uint8_t data_byte)
{
    i2c_start(); /* Sending start bit */
    send_byte(WR_CMD | (((addr >> 8) & 0x7) << 1)); /* Sending control byte with page block */
    send_byte(addr & 0xFF); /* Sending device address */
    send_byte(data_byte); /* Sending actual data byte */
    i2c_stop(); /* Sending stop bit */
}


unsigned char i2c_read_byte(uint16_t addr)
{
    uint8_t rx_data = 0;
    i2c_start();

    /* Extracting page block from address and adding it to the control byte */
    /* Sending write command to write device address */
    send_byte(WR_CMD | (((addr >> 8) & PAGE_BLOCK)<< 1));
    send_byte(addr & 0xFF);

    i2c_start();

    /* Sending read command to read from device */
    send_byte(RD_CMD | (((addr >> 8) & PAGE_BLOCK) << 1));

    rx_data = read_byte();

    i2c_send_nack(); /* Sending NACK after read */
    i2c_stop();
    return rx_data;
}


/* Stop bit requires SDA to go from low -> high with SCL held high */
void i2c_stop(void)
{
    SCL_Low;
    delay_us(bitDelay/4);
    SDA_Low;
    delay_us(bitDelay/4);
    SCL_High;
    delay_us(bitDelay/4);
    SDA_High;
    delay_us(bitDelay/4);
}


/* Hex dump from start to end address as specified */
void i2c_hex_dump(__data uint16_t start_address, uint16_t end_address)
{
    printf("Printing hexdump from start address [%x] to end address [%x]\r\n", start_address, end_address);

    uint16_t num_elements = end_address - start_address + 1; /* Number of elements */
    uint8_t loop_count = num_elements / 16; /* Number of lines with 16 elements */
    uint8_t last_line_num = num_elements % 16; /* Number of elements on the last line */
    uint8_t data_byte;

    /* For each line, print 16 data bytes */
    for(__data uint8_t i = 0; i < loop_count; i++)
    {
        printf("0x%03X\t", start_address + (i << 4));
        for(uint8_t j = 0; j < 16; j++)
        {
            data_byte = i2c_read_byte(start_address + (i << 4) + j); /* Address of data to be read */
            printf("%02X ", data_byte);
        }
        printf_small("\r\n");
    }
    if(last_line_num)
    {
        printf("0x%03X\t", start_address + (loop_count << 4));
    }
    for(uint8_t i = 0; i < last_line_num; i++)
    {
        data_byte = i2c_read_byte(start_address + (loop_count << 4) + i);
        printf("%02X ", data_byte);
    }
    printf_small("\r\n");
}


void reset_eeprom()
{
    i2c_start();

    /* Send 9 bits in succession for reset */
    uint16_t send_byte = 0x1FF;

    for(uint8_t i = 0; i < BYTE_SIZE + 1; i++)
    {
        SCL_Low;
        delay_us(bitDelay/4);

        if((send_byte << i) & 0x100)
        {
            SDA_High;
        }
        else
        {
            SDA_Low;
        }

        //Toggling the SCL pin
        delay_us(bitDelay/4);
        SCL_High;
        delay_us(bitDelay);
    }

    /* Toggling the SCL pin low before changing SDA for stop condition */
    SCL_Low;
    delay_us(bitDelay/4);

    i2c_start();
    i2c_stop();


}


void delay_us(uint32_t delay)
{
    /* Write delay loop */
    for(uint8_t i = 0; i< delay; i++);
}


/* NACK bit sequence */
void i2c_send_nack(void)
{
    /* Value of SDA cannot change when SCL is high */
	SCL_Low;
	delay_us(bitDelay/4);

	/* Toggling SDA to be high to send NACK */
	SDA_High;
	delay_us(bitDelay/4);

	SCL_High;
	delay_us(bitDelay/2);
}


void write_io_port()
{
    uint8_t rx_data;

    /* Read input pins */
    i2c_start();
    send_byte(RD_IO_EXP);
    rx_data = read_byte();
    i2c_send_nack();
    i2c_stop();

    /* Send inverted inputs */
    i2c_start();
    send_byte(WR_IO_EXP);
    send_byte(~rx_data);
    i2c_stop();

    EX0 = 1;
}



void EXT0_IRQHandler(void) __interrupt(IE0_VECTOR)
{
    //IE0 = 0;
    //printf_tiny("Hey\n\r");
    EX0 = 0;
    P1_0 = !P1_0;
    write_io_port();
}
