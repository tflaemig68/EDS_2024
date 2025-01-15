################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/BALO.c \
../Src/MPU6050.c \
../Src/RotaryPushButton.c \
../Src/ST7735.c \
../Src/main.c 

OBJS += \
./Src/BALO.o \
./Src/MPU6050.o \
./Src/RotaryPushButton.o \
./Src/ST7735.o \
./Src/main.o 

C_DEPS += \
./Src/BALO.d \
./Src/MPU6050.d \
./Src/RotaryPushButton.d \
./Src/ST7735.d \
./Src/main.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DSTM32 -DSTM32F401RETx -DSTM32F4 -c -I"D:/GITHUB/STM32/EDS_2024/CMSIS/Include" -I"D:/GITHUB/STM32/EDS_2024/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/GITHUB/STM32/EDS_2024/MCAL/Inc" -I"D:/GITHUB/STM32/EDS_2024/MCAL/Inc/mcalTimer" -I"D:/GITHUB/STM32/EDS_2024/GyroSensorTest/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/BALO.cyclo ./Src/BALO.d ./Src/BALO.o ./Src/BALO.su ./Src/MPU6050.cyclo ./Src/MPU6050.d ./Src/MPU6050.o ./Src/MPU6050.su ./Src/RotaryPushButton.cyclo ./Src/RotaryPushButton.d ./Src/RotaryPushButton.o ./Src/RotaryPushButton.su ./Src/ST7735.cyclo ./Src/ST7735.d ./Src/ST7735.o ./Src/ST7735.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su

.PHONY: clean-Src

