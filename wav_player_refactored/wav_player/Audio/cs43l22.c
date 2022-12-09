/*
 * cs43l22.c
 * @description: A device driver library for the CS43L22 Audio Codec,
 * using STM HAL libraries.
 * @reference:
 * 1.Cirrus Logic CS43L22 datasheet:
 * https://www.mouser.com/ds/2/76/CS43L22_F2-1142121.pdf
 * 2.ST opensource CS43L22 Audio Codec DSP drivers
 *
 */

#include <cs43l22.h>


static I2C_HandleTypeDef i2cx;
extern I2S_HandleTypeDef hi2s3;


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
#define MISCELLANEOUS_CONTRLS				0x0E
#define PLAYBACK_CONTROL					0x0F
#define PASSTHROUGH_VOLUME_A				0x14
#define PASSTHROUGH_VOLUME_B				0x15
#define PCM_VOLUME_A						0x1A
#define PCM_VOLUME_B						0x1B
#define CONFIG_00							0x00
#define CONFIG_47							0x47
#define CONFIG_32							0x32

#define CS43L22_REG_MASTER_A_VOL        	0x20
#define CS43L22_REG_MASTER_B_VOL        	0x21
#define CS43L22_REG_HEADPHONE_A_VOL     	0x22
#define CS43L22_REG_HEADPHONE_B_VOL     	0x23

#define DAC_I2C_ADDR 						0x94
#define TRANSFER_TIMEOUT 					100
#define CS43_DEFAULT_VOLUME				    200

#define CS43L22_MUTE					    1
#define CS43L22_UNMUTE					    0

/***************************************
* Local Function Helper Definition
****************************************/
/**
 * @brief Write 1-byte data to the designated register
 * @param reg: The register address to be written
 * @param data: The one-byte data to be used
 */
static void CS43_write_register(uint8_t reg, uint8_t data)
{
    volatile uint8_t wData[2] = {reg, data};
    HAL_I2C_Master_Transmit(&i2cx, DAC_I2C_ADDR, wData,
    		sizeof(wData), TRANSFER_TIMEOUT);
}

/**
 * @brief read 1-byte data from the designated register
 * @param reg: The register address to be read
 * @return data: The one-byte I2C transfer data
 */
static uint8_t CS43_read_register(uint8_t reg)
{
	volatile uint8_t data;
	HAL_I2C_Master_Transmit(&i2cx, DAC_I2C_ADDR, &reg, 1, TRANSFER_TIMEOUT);
	HAL_I2C_Master_Receive(&i2cx, DAC_I2C_ADDR, &data, 1, TRANSFER_TIMEOUT);
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
 * 1.Unlock and enable I2S
 * 2.Power down the CS43L22
 * 3.Enable the right and left headphones
 * 4.Set automatic clock detection
 * 5.Set the Interface control 1 register:
 * 	- Configure the I/O clocking mode to be slave
 * 	- Set SCLK Clock polarity to be non-inverted
 *  - Disable the DSP mode for the data-packed interface format
 *  - Configure the DAC interface format to be left justified,
 *    up to 24 bit (default)
 *  - Set 16-bit audio word length for I2S interface
 * 6. Passthrough A settings
 * 7. Passthrough B settings
 * 8.Configure an incremental volume ramp from the current
 * level to the new level at the specific rate
 * 9. Unmute headphone and speaker
 * 10.Set volume to default (0dB) for passthrough and 200 for master
 */
void CS43_init(I2C_HandleTypeDef i2c_handle)
{
   uint8_t data;

   // 1.Unlock and enable I2S
	__HAL_UNLOCK(&hi2s3);     // THIS IS EXTREMELY IMPORTANT FOR I2S3 TO WORK!!
	__HAL_I2S_ENABLE(&hi2s3); // THIS IS EXTREMELY IMPORTANT FOR I2S3 TO WORK!!
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_4, GPIO_PIN_SET);

	// Get the I2C handle
	i2cx = i2c_handle;

	//2.Power down
	CS43_write_register(POWER_CONTROL1, 0x01);

	//3.Enable the right and left headphones
	data =  (2 << 6) | // PDN_HPB[0:1]  = 10 (HP-B always onCon)
			(2 << 4) | // PDN_HPA[0:1]  = 10 (HP-A always on)
			(3 << 2) | // PDN_SPKB[0:1] = 11 (Speaker B always off)
			(3 << 0); // PDN_SPKA[0:1] = 11 (Speaker A always off)
	CS43_write_register(POWER_CONTROL2, data);

	//4. Set automatic clock detection
	CS43_write_register(CLOCKING_CONTROL, (1 << 7));

	//5. Interface control 1
	data = CS43_read_register(INTERFACE_CONTROL1);

	// Clear all bits except bit 5 which is reserved
	data &= (1 << 5);

	data &= ((~(1 << 7)) & // Configure the I/O clocking mode to be slave
			(~(1 << 6)) &// Set SCLK Clock polarity to be non-inverted
			(~(1 << 4)) & // Disable the DSP mode for the data-packed interface format
			(~(1 << 2))); // Configure the DAC interface format to be left justified, up to 24 bit (default)

	data |= (1 << 2);

	// Set 16-bit audio word length for I2S interface
	data |=  (3 << 0);
	CS43_write_register(INTERFACE_CONTROL1, data);

	// 6.Passthrough A settings
	data = CS43_read_register(PASSTHROUGH_A) & 0xF0;
	// Use AIN1A as source for passthrough
	data |=  (1 << 0);
	CS43_write_register(PASSTHROUGH_A, data);

	// 7.Passthrough B settings
	data = CS43_read_register(PASSTHROUGH_B) & 0xF0;
	// Use AIN1B as source for passthrough
	data |=  (1 << 0);
	CS43_write_register(PASSTHROUGH_B, data);

	// 8. Configure an incremental volume ramp from the current
	// level to the new level at the specific rate
	CS43_write_register(MISCELLANEOUS_CONTRLS, 0x02);

	// 9.Un-mute headphone and speaker
	CS43_write_register(PLAYBACK_CONTROL, 0x00);

	// 10.Set volume to default (0dB) for passthrough and 200 for master
	CS43_write_register(PASSTHROUGH_VOLUME_A, 0);
	CS43_write_register(PASSTHROUGH_VOLUME_B, 0);
	CS43_write_register(PCM_VOLUME_A, 0);
	CS43_write_register(PCM_VOLUME_B, 0);
	CS43_write_register(CS43L22_REG_MASTER_A_VOL, CS43_DEFAULT_VOLUME);
	CS43_write_register(CS43L22_REG_MASTER_B_VOL, CS43_DEFAULT_VOLUME);
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

  CS43_write_register(CS43L22_REG_MASTER_A_VOL, volume);
  CS43_write_register(CS43L22_REG_MASTER_B_VOL, volume);
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
	CS43_write_register(CS43L22_REG_HEADPHONE_A_VOL,0x00);
	CS43_write_register(CS43L22_REG_HEADPHONE_B_VOL,0x00);
	CS43_write_register(POWER_CONTROL2, 0xAF);
	// Write 0x99 to register 0x00.
	CS43_write_register(CONFIG_00, 0x99);
	// Write 0x80 to register 0x47.
	CS43_write_register(CONFIG_47, 0x80);
	// Write '1'b to bit 7 in register 0x32.
	CS43_write_register(CONFIG_32, (CS43_read_register(CONFIG_32) | 0x80));
	// Write '0'b to bit 7 in register 0x32.
	CS43_write_register(CONFIG_32, (CS43_read_register(CONFIG_32) & (~(0x80))));
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
  CS43_write_register(CS43L22_REG_HEADPHONE_A_VOL,0x01);
  CS43_write_register(CS43L22_REG_HEADPHONE_B_VOL,0x01);
  // Disable soft ramp and zero cross volume transitions.
  CS43_write_register(MISCELLANEOUS_CONTRLS, 0x04);
  // Set the “Power Ctl 1” register (0x02) to 0x9F
  CS43_write_register(POWER_CONTROL1, 0x9F);
}
