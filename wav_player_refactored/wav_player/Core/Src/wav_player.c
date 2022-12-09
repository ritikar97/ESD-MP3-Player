/*
 * wav_player.c
 * @description: The wav player implementation file. The wav player
 * is responsible for playing songs as well as controlling playing sequences.
 * @reference:
 * TODO: Added valid references !
 * @Author: Ritika Ramchandani
 * @Revision: 2.0
 *
 */

#include <cs43l22.h>
#include "wav_player.h"
#include "fatfs.h"
#include "stm32f4xx_hal.h"


typedef struct
{
  uint32_t   ChunkID;       /* 0 */
  uint32_t   FileSize;      /* 4 */
  uint32_t   FileFormat;    /* 8 */
  uint32_t   SubChunk1ID;   /* 12 */
  uint32_t   SubChunk1Size; /* 16*/
  uint16_t   AudioFormat;   /* 20 */
  uint16_t   NbrChannels;   /* 22 */
  uint32_t   SampleRate;    /* 24 */

  uint32_t   ByteRate;      /* 28 */
  uint16_t   BlockAlign;    /* 32 */
  uint16_t   BitPerSample;  /* 34 */
  uint32_t   SubChunk2ID;   /* 36 */
  uint32_t   SubChunk2Size; /* 40 */

}WAV_HeaderTypeDef;


//Audio library defines
#define DMA_MAX_SZE                 0xFFFF
#define DMA_MAX(_X_)                (((_X_) <= DMA_MAX_SZE)? (_X_):DMA_MAX_SZE)
#define AUDIODATA_SIZE              2   /* 16-bits audio data size */
#define PLLI2S_VCO_MUL_FACTOR 		258
#define PLLI2S_CLK_DIV_FACTOR 	    3

//Audio I2S
static I2S_HandleTypeDef *i2sptr = NULL;
//I2S PLL parameters for different I2S Sampling Frequency
static const uint32_t I2SFreq[8] = {8000, 11025, 16000, 22050, 32000, 44100, 48000, 96000};
static const uint32_t I2SPLLN[8] = {256, 429, 213, 429, 426, 271, 258, 344};
static const uint32_t I2SPLLR[8] = {5, 4, 4, 4, 4, 6, 3, 1};

//WAV File System variables
static FIL wavFile;

//WAV Audio Buffer
static uint32_t fileLength;
#define AUDIO_BUFFER_SIZE  4096*1
static uint8_t audioBuffer[AUDIO_BUFFER_SIZE];
static __IO uint32_t audioRemainSize = 0;

//WAV Player
static uint32_t samplingFreq;
static UINT player_bytes_read = 0;
static bool is_song_finished=0;

//WAV Player process states
typedef enum
{
  PLAYER_CONTROL_Idle=0,
  PLAYER_CONTROL_HalfBuffer,
  PLAYER_CONTROL_FullBuffer,
  PLAYER_CONTROL_EndOfFile,
}PLAYER_CONTROL_e;
static volatile PLAYER_CONTROL_e playerControlSM = PLAYER_CONTROL_Idle;

// extern variables
extern I2S_HandleTypeDef hi2s3;

/***************************************
* Local Function Helper Definition
****************************************/
static int get_I2S_freq_index(uint32_t audioFreq)
{
	uint8_t freq_index = 0xFF;
	uint8_t i;

	for(i = 0; i < 8; i++)
	{
		if(I2SFreq[i] == audioFreq)
		{
			freq_index = i;
		}
	}

	return freq_index;
}

/**
 * @brief Audio Clock Config
 * @param audioFreq - The target audio frequency
 */
static void audio_clock_config(uint32_t audioFreq)
{
  RCC_PeriphCLKInitTypeDef rccclkinit;
  uint8_t freqindex = get_I2S_freq_index(audioFreq);

  /* Enable PLLI2S clock */
  HAL_RCCEx_GetPeriphCLKConfig(&rccclkinit);
  rccclkinit.PeriphClockSelection = RCC_PERIPHCLK_I2S;

  // configure the clock source with the default values first
  rccclkinit.PLLI2S.PLLI2SN = PLLI2S_VCO_MUL_FACTOR;
  rccclkinit.PLLI2S.PLLI2SR = PLLI2S_CLK_DIV_FACTOR;

  /* Update the I2S clock config if there is a sampling frequency match*/
  if (freqindex != 0xFF)
  {
    rccclkinit.PLLI2S.PLLI2SN = I2SPLLN[freqindex];
    rccclkinit.PLLI2S.PLLI2SR = I2SPLLR[freqindex];
  }

  HAL_RCCEx_PeriphCLKConfig(&rccclkinit);
}

/**
 * @brief Reset the wav player module
 * @note All internal counters are cleared and the I2S pointer
 * is set if not.
 */
void wavPlayer_reset(void)
{
  audioRemainSize = 0;
  player_bytes_read = 0;
  //assign the I2S handle
  if(!i2sptr){
	  i2sptr = &hi2s3;
  }
}

/**
 * @brief Open the WAV file to play
 * @param filePath - The file path to be open
 * @retval returns true when file is found in USB Drive
 */
bool wavPlayer_openFile(const char* filePath)
{
  WAV_HeaderTypeDef wavHeader;
  UINT readBytes = 0;
  //Open WAV file
  if(f_open(&wavFile, filePath, FA_READ) != FR_OK)
  {
    return false;
  }
  //Read WAV file Header
  f_read(&wavFile, &wavHeader, sizeof(wavHeader), &readBytes);
  //Get audio data size
  fileLength = wavHeader.FileSize;
  //Play the WAV file with frequency specified in header
  samplingFreq = wavHeader.SampleRate;
  return true;
}

/**
 * @brief WAV File Play
 */
void wavPlayer_play(void)
{
  is_song_finished = false;
  //update I2S peripheral sampling frequency
  i2sptr->Init.AudioFreq = samplingFreq;
  //configure the PLL clock frequency setting
  audio_clock_config(samplingFreq);
  //Read Audio data from USB Disk
  f_lseek(&wavFile, 0);
  f_read (&wavFile, &audioBuffer[0], AUDIO_BUFFER_SIZE, &player_bytes_read);
  audioRemainSize = fileLength - player_bytes_read;
  //Start playing the WAV by starting the Codec and initiating the
  //DMA transfer

  //Start Codec
  CS43_start();
  //Start I2S DMA transfer
  HAL_I2S_Transmit_DMA(i2sptr, (uint16_t *)&audioBuffer[0],
		  DMA_MAX(AUDIO_BUFFER_SIZE/AUDIODATA_SIZE));
}

/**
 * @brief Process WAV
 */
void wavPlayer_proceed(void)
{
  switch(playerControlSM)
  {
  case PLAYER_CONTROL_Idle:
    break;

  case PLAYER_CONTROL_HalfBuffer:
    player_bytes_read = 0;
    playerControlSM = PLAYER_CONTROL_Idle;
    f_read (&wavFile, &audioBuffer[0], AUDIO_BUFFER_SIZE/2, &player_bytes_read);
    if(audioRemainSize > (AUDIO_BUFFER_SIZE / 2))
    {
      audioRemainSize -= player_bytes_read;
    }
    else
    {
      audioRemainSize = 0;
      playerControlSM = PLAYER_CONTROL_EndOfFile;
    }
    break;

  case PLAYER_CONTROL_FullBuffer:
    player_bytes_read = 0;
    playerControlSM = PLAYER_CONTROL_Idle;
    f_read (&wavFile, &audioBuffer[AUDIO_BUFFER_SIZE/2], AUDIO_BUFFER_SIZE/2,
    		&player_bytes_read);
    if(audioRemainSize > (AUDIO_BUFFER_SIZE / 2))
    {
      audioRemainSize -= player_bytes_read;
    }
    else
    {
      audioRemainSize = 0;
      playerControlSM = PLAYER_CONTROL_EndOfFile;
    }
    break;

  case PLAYER_CONTROL_EndOfFile:
    f_close(&wavFile);
    wavPlayer_reset();
    is_song_finished = true;
    playerControlSM = PLAYER_CONTROL_Idle;
    break;
  }
}

/**
 * @brief WAV stop
 */
void wavPlayer_stop(void)
{
  CS43_stop();
  HAL_I2S_DMAStop(i2sptr);
  f_close(&wavFile);
  is_song_finished = true;
}

/**
 * @brief WAV pause/resume
 */
void wavPlayer_pause(void)
{
	CS43_stop();
	HAL_I2S_DMAPause(i2sptr);
}
void wavPlayer_resume(void)
{
	CS43_start();
	HAL_I2S_DMAResume(i2sptr);
}

void wavPlayer_setVolume(uint8_t volume)
{
  CS43_set_volume(volume);
}

/**
 * @brief isEndofFile reached
 */
bool is_wavPlayer_finishedPlaying(void)
{
  return is_song_finished;
}

/**
 * @brief Half/Full transfer Audio callback for buffer management
 */
void audioI2S_halfTransfer_Callback(void)
{
  playerControlSM = PLAYER_CONTROL_HalfBuffer;
}
void audioI2S_fullTransfer_Callback(void)
{
  playerControlSM = PLAYER_CONTROL_FullBuffer;
}
void HAL_I2S_TxCpltCallback(I2S_HandleTypeDef *hi2s)
{
  if(hi2s->Instance == SPI3)
  {
	  audioI2S_fullTransfer_Callback();
  }
}
void HAL_I2S_TxHalfCpltCallback(I2S_HandleTypeDef *hi2s)
{
  if(hi2s->Instance == SPI3)
  {
	  audioI2S_halfTransfer_Callback();
  }
}
