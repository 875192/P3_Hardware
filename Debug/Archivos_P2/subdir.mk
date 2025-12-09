################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Archivos_P2/8led.c \
../Archivos_P2/button.c \
../Archivos_P2/cola.c \
../Archivos_P2/led.c \
../Archivos_P2/main.c \
../Archivos_P2/sudoku_2025.c \
../Archivos_P2/timer.c \
../Archivos_P2/timer1.c \
../Archivos_P2/timer2.c \
../Archivos_P2/timer3.c 

ASM_SRCS += \
../Archivos_P2/init_b.asm 

OBJS += \
./Archivos_P2/8led.o \
./Archivos_P2/button.o \
./Archivos_P2/cola.o \
./Archivos_P2/init_b.o \
./Archivos_P2/led.o \
./Archivos_P2/main.o \
./Archivos_P2/sudoku_2025.o \
./Archivos_P2/timer.o \
./Archivos_P2/timer1.o \
./Archivos_P2/timer2.o \
./Archivos_P2/timer3.o 

C_DEPS += \
./Archivos_P2/8led.d \
./Archivos_P2/button.d \
./Archivos_P2/cola.d \
./Archivos_P2/led.d \
./Archivos_P2/main.d \
./Archivos_P2/sudoku_2025.d \
./Archivos_P2/timer.d \
./Archivos_P2/timer1.d \
./Archivos_P2/timer2.d \
./Archivos_P2/timer3.d 

ASM_DEPS += \
./Archivos_P2/init_b.d 


# Each subdirectory must supply rules for building sources it contributes
Archivos_P2/%.o: ../Archivos_P2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -I"C:\hlocal\workspace_Hardware\practica3\LCD_touch_2025\common" -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -mapcs-frame -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=arm7tdmi -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Archivos_P2/%.o: ../Archivos_P2/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC Assembler'
	arm-none-eabi-gcc -x assembler-with-cpp -I"C:\hlocal\workspace_Hardware\practica3\LCD_touch_2025\common" -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=arm7tdmi -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


