/*
 * wav_player.h
 * @description: The wav player header file. This file defines
 * the public functions that applications can call to access the
 * wav player. The wav player is responsible for playing songs
 * as well as controlling playing sequences.
 * @reference:
 * TODO: Added valid references !
 * @Author: Ritika Ramchandani
 * @Revision: 2.0
 */

#ifndef _WAV_PLAYER_H_
#define _WAV_PLAYER_H_

#include <stdbool.h>
#include <stdint.h>


/**
 * @brief Open the WAV file to play
 * @retval returns true when file is found in USB Drive
 */
bool wavPlayer_openFile(const char* filePath);

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
 * @brief Proceed the WAV play
 */
void wavPlayer_proceed(void);

/**
 * @brief isEndofFile reached
 */
bool is_wavPlayer_finishedPlaying(void);

/**
 * @brief Set WAV player volume
 */
void wavPlayer_setVolume(uint8_t volume);


/**
 * @brief WAV pause/resume
 */
void wavPlayer_pause(void);
void wavPlayer_resume(void);

#endif /* _WAV_PLAYER_H_ */
