/*
Library:					STM32F4 Audio Codec - CS43L22
Written by:				Mohamed Yaqoob (MYaqoobEmbedded YouTube Channel)
Date Written:			29/01/2016
Last modified:			29/12/2018
Description:			This is an STM32 device driver library for the CS43L22 Audio Codec, using STM HAL libraries

References:
			1) Cirrus Logic CS43L22 datasheet
				 https://www.mouser.com/ds/2/76/CS43L22_F2-1142121.pdf
			2) ST opensource CS43L22 Audio Codec dsp drivers.

* Copyright (C) 2018 - M. Yaqoob
   This is a free software under the GNU license, you can redistribute it and/or modify it under the terms
   of the GNU General Public License version 3 as published by the Free Software Foundation.

   This software library is shared with public for educational purposes, without WARRANTY and Author is not liable for any damages caused directly
   or indirectly by this software, read more about this on the GNU General Public License.
*/

#include "cs43l22.h"
#include <stdbool.h>
/***************************************
* Local Macro Definition
****************************************/
#define POWER_CONTROL1						0x02
#define POWER_CONTROL2						0x04
#define CLOCKING_CONTROL 	  				0x05
#define INTERFACE_CONTROL1					0x06
#define INTERFACE_CONTROL2					0x07
#define PASSTHROUGH_A						0x08
#define PASSTHROUGH_B						0x09
#define PLAYBACK_CONTROL1 					0x0D
#define MISCELLANEOUS_CONTRLS				0x0E
#define PLAYBACK_CONTROL2					0x0F
#define PASSTHROUGH_VOLUME_A				0x14
#define PASSTHROUGH_VOLUME_B				0x15
#define PCM_VOLUME_A						0x1A
#define PCM_VOLUME_B						0x1B
#define CONFIG_00							0x00
#define CONFIG_47							0x47
#define CONFIG_32							0x32

#define MASTER_A_VOL        				0x20
#define MASTER_B_VOL        				0x21
#define HEADPHONE_A_VOL     				0x22
#define HEADPHONE_B_VOL     				0x23

#define DAC_I2C_ADDR 						0x94
#define TRANSFER_TIMEOUT 					100
#define CS43_DEFAULT_VOLUME				    200


static I2C_HandleTypeDef i2cx;
extern I2S_HandleTypeDef hi2s3;


/***************************************
* Local Function Helper Definition
****************************************/
/**
 * @brief Write 1-byte data to the designated register
 * @param reg: The register address to be written
 * @param data: The one-byte data to be used
 * @note This function uses the ST I2C library to transfer
 * data in the master mode.
 */
static void CS43_write_register(uint8_t reg, uint8_t data)
{
    uint8_t wData[2];
    wData[0] = reg;
    wData[1] = data;
    HAL_I2C_Master_Transmit(&i2cx, DAC_I2C_ADDR, wData,
    		2, TRANSFER_TIMEOUT);
}


/**
 * @brief read 1-byte data from the designated register
 * @param reg: The register address to be read
 * @return data: The one-byte I2C transfer data
 * @note This function uses the ST I2C library to transfer
 * data in the master, full-duplex mode.
 */
static uint8_t CS43_read_register(uint8_t reg)
{
	uint8_t rData[2];
	uint8_t data;
	rData[0] = reg;
	HAL_I2C_Master_Transmit(&i2cx, DAC_I2C_ADDR, rData, 1,
			TRANSFER_TIMEOUT);
	HAL_I2C_Master_Receive(&i2cx, DAC_I2C_ADDR, &data, 1,
			TRANSFER_TIMEOUT);
	return data;
}


/***************************************
* Public Function Definition
****************************************/
/**
 * @brief Initialize the CS43L22 Audio Codec using STM HAL libraries.
 * @param i2c_handle: The handler of the I2C module to be used
 * @param outputMode: The output mode of the CS43L22
 * @note The CS43L22 Audio Codec is configured with the following
 * steps according to the datasheet:
 *
 * 1.Unlock and enable I2S3
 * 2.Power down the CS43L22
 * 3.Disable the speaker amplifier and enable Left/Right headphones
 * 4.Set automatic clock detection
 * 5.Set the Interface control 1 register:
 * 	- Configure the I/O clocking mode to be slave
 * 	- Set SCLK Clock polarity to be non-inverted
 *  - Disable the DSP mode for the data-packed interface format
 *  - Configure the DAC interface format to be left justified,
 *    up to 24 bit (default)
 *  - Set 16-bit audio word length for I2S interface
 * 6.Use AIN1A as source for passthrough A
 * 7.Use AIN1B as source for passthrough B
 * 8.Configure an incremental volume ramp from the current
 * level to the new level at the specific rate
 * 9. Configure the analog gain to be 1.143
 * 10.Unmute headphone and speaker
 * 11.Set PCM volume to the maximum (+12dB)
 * 12.Set the passthrough A&B volumes to maximum (+12dB)
 * 13.Set the default master volume to be 0dB
 */

void CS43_init(I2C_HandleTypeDef i2c_handle)
{
    uint8_t data;
	__HAL_UNLOCK(&hi2s3);     // THIS IS EXTREMELY IMPORTANT FOR I2S3 TO WORK!!
	__HAL_I2S_ENABLE(&hi2s3); // THIS IS EXTREMELY IMPORTANT FOR I2S3 TO WORK!!
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_4, GPIO_PIN_SET);
	//(1): Get the I2C handle
	i2cx = i2c_handle;
	//(2): Power down
	data = 0x01;
	CS43_write_register(POWER_CONTROL1,data);
	//(3): Enable Right and Left headphones
	data =  (2 << 6);  // PDN_HPB[0:1]  = 10 (HP-B always onCon)
	data |= (2 << 4);  // PDN_HPA[0:1]  = 10 (HP-A always on)
	data |= (3 << 2);  // PDN_SPKB[0:1] = 11 (Speaker B always off)
	data |= (3 << 0);  // PDN_SPKA[0:1] = 11 (Speaker A always off)
	CS43_write_register(POWER_CONTROL2,data);
	//(4): Automatic clock detection
	data = (1 << 7);
	CS43_write_register(CLOCKING_CONTROL,data);
	//(5): Interface control 1
	data = CS43_read_register(INTERFACE_CONTROL1);
	data &= (1 << 5); // Clear all bits except bit 5 which is reserved
	data &= ~(1 << 7);  // Slave
	data &= ~(1 << 6);  // Clock polarity: Not inverted
	data &= ~(1 << 4);  // No DSP mode
	data &= ~(1 << 2);  // Left justified, up to 24 bit (default)
	data |= (1 << 2);

	data |=  (3 << 0);  // 16-bit audio word length for I2S interface
	CS43_write_register(INTERFACE_CONTROL1,data);
	//(6): Passthrough A settings
	data = CS43_read_register(PASSTHROUGH_A);
	data &= 0xF0;      // Bits [4-7] are reserved
	data |=  (1 << 0); // Use AIN1A as source for passthrough
	CS43_write_register(PASSTHROUGH_A, data);
	//(7): Passthrough B settings
	data = CS43_read_register(PASSTHROUGH_B);
	data &= 0xF0;      // Bits [4-7] are reserved
	data |=  (1 << 0); // Use AIN1B as source for passthrough
	CS43_write_register(PASSTHROUGH_B, data);
	//(8): Miscellaneous register settings
	data = CS43_read_register(MISCELLANEOUS_CONTRLS);
	data = 0x02;
	CS43_write_register(MISCELLANEOUS_CONTRLS, data);

	// 9. Configure the analog gain to be 1.143
	data = 0xE0;
	CS43_write_register(PLAYBACK_CONTROL1, data);

	//(9): Unmute headphone and speaker
	data = CS43_read_register(PLAYBACK_CONTROL2);
	data = 0x00;
	CS43_write_register(PLAYBACK_CONTROL2,data);
	//(10): Set volume to default (+12dB)
	data = 0x18;
	CS43_write_register(PCM_VOLUME_A,data);
	CS43_write_register(PCM_VOLUME_B,data);

	//(11): Set the passthrough volume to default (+12dB),
	data = 0x7F;
	CS43_write_register(PASSTHROUGH_VOLUME_A,data);
	CS43_write_register(PASSTHROUGH_VOLUME_B,data);

	//(12): Maximize the master volume
	data = 0x00;
	CS43_write_register(MASTER_A_VOL,data);
	CS43_write_register(MASTER_B_VOL,data);

}

/*
 * @brief configure the audio volume
 * @param volume - The target volume level
 * @note The volume level is configured based on the
 * boundary check.
 */
void CS43_set_volume(uint8_t volume)
{
  /* Set the Master volume registers */
  if((volume >= 231) && (volume < 256)){
	  volume -= 231;
  }
  else{
	  volume += 25;
  }

  CS43_write_register(HEADPHONE_A_VOL, volume);
  CS43_write_register(HEADPHONE_B_VOL, volume);
}


/*
 * @brief Start the audio DAC
 * @note: The following steps have to be performed
 * in order to successfully start the audio DAC:
 *
 * 1. Write 0x99 to register 0x00.
 * 2. Write 0x80 to register 0x47.
 * 3. Write ‘1’b to bit 7 in register 0x32.
 * 4. Write ‘0’b to bit 7 in register 0x32.
 * 5. Write 0x00 to register 0x00.
 */
void CS43_start(void)
{
	uint8_t data;
	// Unmute the DAC’s and PWM outputs
	CS43_write_register(POWER_CONTROL2, 0xFF);
	CS43_write_register(HEADPHONE_A_VOL,0x00);
	CS43_write_register(HEADPHONE_B_VOL,0x00);

	CS43_write_register(POWER_CONTROL2, 0xAF);
	// Write 0x99 to register 0x00.
	CS43_write_register(CONFIG_00, 0x99);
	// Write 0x80 to register 0x47.
	CS43_write_register(CONFIG_47, 0x80);
	// Write '1'b to bit 7 in register 0x32.
	data = CS43_read_register(CONFIG_32);
	data |= 0x80;
	CS43_write_register(CONFIG_32, data);
	// Write '0'b to bit 7 in register 0x32.
	data = CS43_read_register(CONFIG_32);
	data &= ~(0x80);
	CS43_write_register(CONFIG_32, data);
	// Write 0x00 to register 0x00.
	CS43_write_register(CONFIG_00, 0x00);
	//Set the "Power Ctl 1" register (0x02) to 0x9E
	CS43_write_register(POWER_CONTROL1, 0x9E);
}

/**
 * @brief Stop the audio DAC
 * @note To minimize audible pops when turning off or placing the DAC in standby,
 * the following steps need to be taken:
 * 	1. Mute the DAC’s and PWM outputs.
 * 	2. Disable soft ramp and zero cross volume transitions.
 * 	3. Set the “Power Ctl 1” register (0x02) to 0x9F.
 */
void CS43_stop(void)
{
  // Mute the DAC’s and PWM outputs
  CS43_write_register(POWER_CONTROL2, 0xFF);
  CS43_write_register(HEADPHONE_A_VOL,0x01);
  CS43_write_register(HEADPHONE_B_VOL,0x01);
  // Disable soft ramp and zero cross volume transitions.
  CS43_write_register(MISCELLANEOUS_CONTRLS, 0x04);
  // Set the “Power Ctl 1” register (0x02) to 0x9F
  CS43_write_register(POWER_CONTROL1, 0x9F);
}
