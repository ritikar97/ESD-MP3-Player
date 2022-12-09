/*
 * lcd.h
 *
*  Created on: 03-Dec-2022
 * Author: Shuran Xu
 */

#ifndef INC_LCD_H_
#define INC_LCD_H_

/***************************************
* GPIO Macro definition for LCD signals
****************************************/
#define RS_Pin GPIO_PIN_1
#define RS_GPIO_Port GPIOE
#define RW_Pin GPIO_PIN_2
#define RW_GPIO_Port GPIOE
#define EN_Pin GPIO_PIN_3
#define EN_GPIO_Port GPIOE
#define D4_Pin GPIO_PIN_4
#define D4_GPIO_Port GPIOE
#define D5_Pin GPIO_PIN_5
#define D5_GPIO_Port GPIOE
#define D6_Pin GPIO_PIN_6
#define D6_GPIO_Port GPIOE
#define D7_Pin GPIO_PIN_7
#define D7_GPIO_Port GPIOE


/***************************************
* Public function declaration
****************************************/
// initialize lcd
void lcd_init (void);
// send string to the lcd
void lcd_send_string (char *str);
// put cursor at the entered position row (0 or 1), col (0-15);
void lcd_update_cur(int row, int col);
// clear the lcd
void lcd_clear (void);

#endif /* INC_LCD_H_ */
