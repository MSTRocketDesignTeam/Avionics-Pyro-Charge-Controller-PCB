################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USB_Device/Target/usbd_conf.c 

C_DEPS += \
./USB_Device/Target/usbd_conf.d 

OBJS += \
./USB_Device/Target/usbd_conf.o 


# Each subdirectory must supply rules for building sources it contributes
USB_Device/Target/%.o USB_Device/Target/%.su: ../USB_Device/Target/%.c USB_Device/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L562xx -c -I../USB_Device/App -I../USB_Device/Target -I../Core/Inc -I../Drivers/STM32L5xx_HAL_Driver/Inc -I../Drivers/STM32L5xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-USB_Device-2f-Target

clean-USB_Device-2f-Target:
	-$(RM) ./USB_Device/Target/usbd_conf.d ./USB_Device/Target/usbd_conf.o ./USB_Device/Target/usbd_conf.su

.PHONY: clean-USB_Device-2f-Target
