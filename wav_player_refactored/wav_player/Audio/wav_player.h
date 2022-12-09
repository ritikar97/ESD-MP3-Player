/*
 * wav_player.h
 *
 *  Created on: 17 Apr 2020
 *      Author: Mohamed Yaqoob
 */

#ifndef WAV_PLAYER_H_
#define WAV_PLAYER_H_

#include <stdbool.h>
#include <stdint.h>



/**
 * @brief Select WAV file to play
 * @retval returns true when file is found in USB Drive
 */
bool wavPlayer_fileSelect(const char* filePath);

/**
 * @brief WAV Player Reset
 */
void wavPlayer_reset(void);

/**
 * @brief WAV File Play
 */
void wavPlayer_play(void);

/**
 * @brief WAV stop
 */
void wavPlayer_stop(void);

/**
 * @brief Process WAV
 */
void wavPlayer_process(void);

/**
 * @brief isEndofFile reached
 */
bool wavPlayer_isFinished(void);

/**
 * @brief Set WAV player volume
 */
void wavPlayer_setVolume(uint8_t volume);


/**
 * @brief WAV pause/resume
 */
void wavPlayer_pause(void);
void wavPlayer_resume(void);

#endif /* WAV_PLAYER_H_ */
