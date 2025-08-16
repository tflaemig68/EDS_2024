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
../Src/main.c \
../Src/regler.c \
../Src/system_stm32f4xx.c 

OBJS += \
./Src/BALO.o \
./Src/RotaryPushButton.o \
./Src/ST7735.o \
./Src/i2cAMIS.o \
./Src/main.o \
./Src/regler.o \
./Src/system_stm32f4xx.o 

C_DEPS += \
./Src/BALO.d \
./Src/RotaryPushButton.d \
./Src/ST7735.d \
./Src/i2cAMIS.d \
./Src/main.d \
./Src/regler.d \
./Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F401RETx -DSTM32F4 -c -I"C:/GITHUB/STM32/EDS_2024/CMSIS/Include" -I"C:/GITHUB/STM32/EDS_2024/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/GITHUB/STM32/EDS_2024/MCAL/Inc" -I"C:/GITHUB/STM32/EDS_2024/MCAL/Inc/mcalTimer" -I"C:/GITHUB/STM32/EDS_2024/StepperAxis/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/BALO.cyclo ./Src/BALO.d ./Src/BALO.o ./Src/BALO.su ./Src/RotaryPushButton.cyclo ./Src/RotaryPushButton.d ./Src/RotaryPushButton.o ./Src/RotaryPushButton.su ./Src/ST7735.cyclo ./Src/ST7735.d ./Src/ST7735.o ./Src/ST7735.su ./Src/i2cAMIS.cyclo ./Src/i2cAMIS.d ./Src/i2cAMIS.o ./Src/i2cAMIS.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/regler.cyclo ./Src/regler.d ./Src/regler.o ./Src/regler.su ./Src/system_stm32f4xx.cyclo ./Src/system_stm32f4xx.d ./Src/system_stm32f4xx.o ./Src/system_stm32f4xx.su

.PHONY: clean-Src

