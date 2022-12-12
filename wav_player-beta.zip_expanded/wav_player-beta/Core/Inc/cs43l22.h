/*
 * cs43l22.h
 * @description: The header file of the library implementation of
 * the CS43L22 Audio Codec using STM HAL libraries.
 * @reference:
 * 1.Cirrus Logic CS43L22 datasheet:
 * https://www.mouser.com/ds/2/76/CS43L22_F2-1142121.pdf
 * 2.ST open-source CS43L22 Audio Codec DSP drivers
 * @Author: Shuran Xu
 * @Revision: 2.0
 */

#ifndef __CS43L22_H___
#define __CS43L22_H___
#include "stm32f4xx_hal.h"


/***************************************
* Public function declaration
****************************************/
void CS43_init(I2C_HandleTypeDef i2c_handle);
void CS43_set_volume(uint8_t volume);
void CS43_start(void);
void CS43_stop(void);

#endif // __CS43L22_H___
