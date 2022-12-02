################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../audio/MY_CS43L22.c \
../audio/audioI2S.c \
../audio/wav_player.c 

OBJS += \
./audio/MY_CS43L22.o \
./audio/audioI2S.o \
./audio/wav_player.o 

C_DEPS += \
./audio/MY_CS43L22.d \
./audio/audioI2S.d \
./audio/wav_player.d 


# Each subdirectory must supply rules for building sources it contributes
audio/%.o audio/%.su: ../audio/%.c audio/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../audio -Og -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-audio

clean-audio:
	-$(RM) ./audio/MY_CS43L22.d ./audio/MY_CS43L22.o ./audio/MY_CS43L22.su ./audio/audioI2S.d ./audio/audioI2S.o ./audio/audioI2S.su ./audio/wav_player.d ./audio/wav_player.o ./audio/wav_player.su

.PHONY: clean-audio

