################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/Balancer.c \
../Src/RotaryPushButton.c \
../Src/ST7735.c \
../Src/Sensor3DG.c \
../Src/SensorTOF.c \
../Src/main.c \
../Src/syscalls.c \
../Src/sysmem.c \
../Src/visualisation.c 

OBJS += \
./Src/Balancer.o \
./Src/RotaryPushButton.o \
./Src/ST7735.o \
./Src/Sensor3DG.o \
./Src/SensorTOF.o \
./Src/main.o \
./Src/syscalls.o \
./Src/sysmem.o \
./Src/visualisation.o 

C_DEPS += \
./Src/Balancer.d \
./Src/RotaryPushButton.d \
./Src/ST7735.d \
./Src/Sensor3DG.d \
./Src/SensorTOF.d \
./Src/main.d \
./Src/syscalls.d \
./Src/sysmem.d \
./Src/visualisation.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F401RETx -DSTM32F4 -c -I../Inc -I"/Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne Titel/EDS_2024_fork/MCAL" -I"/Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne Titel/EDS_2024_fork/CMSIS" -I"/Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne Titel/EDS_2024_fork/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne Titel/EDS_2024_fork/CMSIS/Include" -I"/Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne Titel/EDS_2024_fork/MCAL/Inc" -I"/Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne Titel/EDS_2024_fork/MCAL/Inc/mcalTimer" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/Balancer.cyclo ./Src/Balancer.d ./Src/Balancer.o ./Src/Balancer.su ./Src/RotaryPushButton.cyclo ./Src/RotaryPushButton.d ./Src/RotaryPushButton.o ./Src/RotaryPushButton.su ./Src/ST7735.cyclo ./Src/ST7735.d ./Src/ST7735.o ./Src/ST7735.su ./Src/Sensor3DG.cyclo ./Src/Sensor3DG.d ./Src/Sensor3DG.o ./Src/Sensor3DG.su ./Src/SensorTOF.cyclo ./Src/SensorTOF.d ./Src/SensorTOF.o ./Src/SensorTOF.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.cyclo ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su ./Src/visualisation.cyclo ./Src/visualisation.d ./Src/visualisation.o ./Src/visualisation.su

.PHONY: clean-Src

