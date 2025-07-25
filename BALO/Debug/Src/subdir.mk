################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/BALO.c \
../Src/RotaryPushButton.c \
../Src/ST7735.c \
../Src/i2cAMIS.c \
../Src/i2cMPU.c \
../Src/i2cRFID.c \
../Src/i2cTOF.c \
../Src/regler.c 

OBJS += \
./Src/BALO.o \
./Src/RotaryPushButton.o \
./Src/ST7735.o \
./Src/i2cAMIS.o \
./Src/i2cMPU.o \
./Src/i2cRFID.o \
./Src/i2cTOF.o \
./Src/regler.o 

C_DEPS += \
./Src/BALO.d \
./Src/RotaryPushButton.d \
./Src/ST7735.d \
./Src/i2cAMIS.d \
./Src/i2cMPU.d \
./Src/i2cRFID.d \
./Src/i2cTOF.d \
./Src/regler.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F401RETx -DSTM32F4 -c -I"D:/GITHUB/STM32/EDS_2024/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/GITHUB/STM32/EDS_2024/CMSIS/Include" -I"D:/GITHUB/STM32/EDS_2024/MCAL/Inc" -I"D:/GITHUB/STM32/EDS_2024/MCAL/Inc/mcalTimer" -I"D:/GITHUB/STM32/EDS_2024/BALO/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/BALO.cyclo ./Src/BALO.d ./Src/BALO.o ./Src/BALO.su ./Src/RotaryPushButton.cyclo ./Src/RotaryPushButton.d ./Src/RotaryPushButton.o ./Src/RotaryPushButton.su ./Src/ST7735.cyclo ./Src/ST7735.d ./Src/ST7735.o ./Src/ST7735.su ./Src/i2cAMIS.cyclo ./Src/i2cAMIS.d ./Src/i2cAMIS.o ./Src/i2cAMIS.su ./Src/i2cMPU.cyclo ./Src/i2cMPU.d ./Src/i2cMPU.o ./Src/i2cMPU.su ./Src/i2cRFID.cyclo ./Src/i2cRFID.d ./Src/i2cRFID.o ./Src/i2cRFID.su ./Src/i2cTOF.cyclo ./Src/i2cTOF.d ./Src/i2cTOF.o ./Src/i2cTOF.su ./Src/regler.cyclo ./Src/regler.d ./Src/regler.o ./Src/regler.su

.PHONY: clean-Src

