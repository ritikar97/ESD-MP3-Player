/*
 * lcd.c
 *  @description: The LCD driver for the HD44780 LCD controller. The
 *  driver transfers data/command in the 4-bit mode.
 *  @Connections:
 *  - RS: E1
 *  - R/W: GND
 *  - E: E3
 *  - DB4: E4
 *  - DB5: E5
 *  - DB6: E6
 *  - DB7: E7
 *  @Reference: The HD44780U datasheet:
 *  https://www.alldatasheet.com/datasheet-pdf/pdf/63673/HITACHI/HD44780.html
 */

#include <lcd.h>
#include "stm32f4xx_hal.h"



/***************************************
* Local Function Helper Definition
****************************************/

extern TIM_HandleTypeDef htim1;
static void delay_us(uint16_t us)
{
	__HAL_TIM_SET_COUNTER(&htim1, 0);
	while (__HAL_TIM_GET_COUNTER(&htim1) < us);
}


/**
 * @brief Send raw data to the LCD controller.
 * @param data: raw data to be sent, should be only 4-bit long
 * @param rs: the RS signal for data/cmd.
 */
static void send_to_lcd (char data, int rs)
{
	// enable the LCD
	HAL_GPIO_WritePin(EN_GPIO_Port, EN_Pin, 1);
	// set the delay between EN pin to be 60 uS to accommodate
	// the system clock
	delay_us(60);

	// rs = 1 for data, rs=0 for command
	HAL_GPIO_WritePin(RS_GPIO_Port, RS_Pin, rs);

	// write the data to the respective pin
	// use D[7:4] to transfer data
	HAL_GPIO_WritePin(D7_GPIO_Port, D7_Pin, ((data>>3)&0x01));
	HAL_GPIO_WritePin(D6_GPIO_Port, D6_Pin, ((data>>2)&0x01));
	HAL_GPIO_WritePin(D5_GPIO_Port, D5_Pin, ((data>>1)&0x01));
	HAL_GPIO_WritePin(D4_GPIO_Port, D4_Pin, ((data>>0)&0x01));

	// disable the LCD
	HAL_GPIO_WritePin(EN_GPIO_Port, EN_Pin, 0);
	delay_us(60);
}

/**
 * @brief Send commands to the LCD controller.
 * @param cmd: the command byte to be sent
 * @note RS must be 0 while sending command
 */
static void lcd_send_cmd (char cmd)
{
    /* send upper 4-bit first */
    send_to_lcd((cmd>>4)&0x0f,0);
    /* send Lower 4-bit */
   	send_to_lcd((cmd)&0x0f, 0);
}

/**
 * @brief Send data to the LCD controller.
 * @param cmd: the command byte to be sent
 * @note RS must be 1 while sending command
 */
static void lcd_send_data (char data)
{
	/* send upper 4-bit first */
	send_to_lcd((data>>4)&0x0f,1);
	/* send Lower 4-bit */
	send_to_lcd((data)&0x0f, 1);
}

/**
 * @brief Clear the LCD screen
 * @note Send 0x01 to clear the LCD screen
 */
void lcd_clear (void)
{
	lcd_send_cmd(0x01);
	HAL_Delay(10);
}

/**
 * @brief Update the cursor position
 * @param row: the destination row number
 * @param col: the destination col number
 */
void lcd_update_cur(int row, int col)
{
    switch (row)
    {
        case 0:
            col |= 0x80;
            break;
        case 1:
            col |= 0xC0;
            break;
    }

    lcd_send_cmd (col);
}


/**
 * @brief Initialize the LCD controller
 * @note The init routine performs the following
 * steps:
 *
 * - reset the controller
 * - set the function to be 4-bit mode
 * - display off
 * - clear the display
 * - set the cursor to be incremental and no shifting
 * - display on and blink the cursor
 */
void lcd_init (void)
{
	// reset the controller
	HAL_Delay(150);  // wait for >40ms
	lcd_send_cmd (0x30);
	HAL_Delay(15);  // wait for >4.1ms
	lcd_send_cmd (0x30);
	HAL_Delay(5);  // wait for >100us
	lcd_send_cmd (0x30);
	HAL_Delay(30);
	lcd_send_cmd (0x20);  // 4bit mode
	HAL_Delay(30);

	// initialize the LCD controller

	// DL = 0 (4 bit mode),
	// N = 1 (2 line display)
	// F = 0 (5x8 characters)
	lcd_send_cmd (0x28);
	HAL_Delay(15);
	// Display off control
	// D=0,C=0, B=0
	lcd_send_cmd (0x08);
	HAL_Delay(15);
	// clear display
	lcd_send_cmd (0x01);
	HAL_Delay(15);
	// Entry mode set
	// I/D = 1 (increment cursor)
	// S = 0 (no shift)
	lcd_send_cmd (0x06);
	HAL_Delay(15);
	// Display on/off control
	// D = 1, C and B = 0.
	//(Cursor and blink, last two bits)
	lcd_send_cmd (0x0C);
}

/**
 * @brief Update the cursor position
 * @param str: the string to be displayed
 */
void lcd_send_string (char *str)
{
	while (*str){
		lcd_send_data(*str++);
	}
}
