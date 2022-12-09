/*
 * cs43l22.h
 * @description: A device driver library for the CS43L22 Audio Codec,
 * using STM HAL libraries.
 * @reference:
 * 1.Cirrus Logic CS43L22 datasheet:
 * https://www.mouser.com/ds/2/76/CS43L22_F2-1142121.pdf
 * 2.ST opensource CS43L22 Audio Codec DSP drivers
 *
 */


#include "stm32f4xx_hal.h"


/***************************************
* Public function declaration
****************************************/
void CS43_init(I2C_HandleTypeDef i2c_handle);
void CS43_set_volume(uint8_t volume);
void CS43_start(void);
void CS43_stop(void);
