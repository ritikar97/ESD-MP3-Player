#ifndef __SDC_H__
#define __SDC_H__

#include <stdint.h>

/**
 * @brief Initialize the SD card. The initialization procedure first
 * instructs the sd card to enter the idle state, and then detect the
 * card type. Based on the card type, different initialization commands
 * are issued to initiate the process. Upon the initialization, the
 * card status is checked to ensure the card is operational. Finally,
 * the block size is explicitly set to 512 bytes.
 * @param sector_number: The sector number to be read
 * @param buffer: The buffer pointer to which the data is stored
 * @return function return code, 0 if success or integers from the customed enum
 */
int sd_init(void);


 /**
 * @brief sd_read_sector( ) expects to read 512 bytes at a time
 * @param sector_number: The sector number to be read
 * @param buffer: The buffer pointer to which the data is stored
 */
 int sd_read_sector( uint16_t sector_number, uint8_t *buffer );

/**
 * @brief The function expects to write 512 bytes at a time
 * @param sector_number: The sector number to be written
 * @param buffer: The buffer pointer to which the data is stored
 */
int sd_write_sector( uint16_t sector_number, const uint8_t *buffer );

/**
 * @brief This function acts as the flush function. This
 * is to ensure the card is ready for the next command.
 */
uint8_t sd_wait_for_ready();


/**
 * @brief returns the card type detected during the initialization process.
 * @return card type integer
 */
int get_card_type(void);

#endif // __SDC_H__
