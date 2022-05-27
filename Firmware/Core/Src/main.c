/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2022 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "app_fatfs.h"
#include "usb_device.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
 I2C_HandleTypeDef hi2c1;

TIM_HandleTypeDef htim4;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_ICACHE_Init(void);
static void MX_I2C1_Init(void);
static void MX_TIM4_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	int16_t val;
	float temp_c;
	uint8_t buf[1];
	uint8_t validAddr[20];
	uint8_t addrIndex = 0;
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_ICACHE_Init();
  MX_USB_Device_Init();
  if (MX_FATFS_Init() != APP_OK) {
    Error_Handler();
  }
  MX_I2C1_Init();
  MX_TIM4_Init();
  /* USER CODE BEGIN 2 */
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1);

	HAL_StatusTypeDef i2c;

	/*--------MS5607_VARS-------------*/
	const uint8_t MS5607_ADDR = 0x77 << 1;
	uint8_t dataBuf[3];
	uint32_t rawTemp = 0, rawPressure = 0; //will hold raw uncalibrated 24 bit readings
	uint16_t C1, C2, C3, C4, C5, C6; // calibration data, explained in datasheet
	int32_t dT, TEMP, P;
	int64_t OFF, SENS;
	/*--------------------------------*/

	/*--------MS5607_INIT-------------*/
	//continually send reset commands until chip wakes up and successfully acknowledges
	do {
		dataBuf[0] = 0x1E;
		i2c = HAL_I2C_Master_Transmit(&hi2c1, MS5607_ADDR, dataBuf, 1,
				HAL_MAX_DELAY);
	} while (i2c != HAL_OK);

	//read in the factory calibration data stored in PROM
	dataBuf[0] = 0xA1; //C1 - Pressure Sensitivity
	i2c = HAL_I2C_Master_Transmit(&hi2c1, MS5607_ADDR, dataBuf, 1,
			HAL_MAX_DELAY);
	i2c = HAL_I2C_Master_Receive(&hi2c1, MS5607_ADDR, dataBuf, 2,
			HAL_MAX_DELAY);
	C1 = (dataBuf[0] << 8) | (dataBuf[1]);

	dataBuf[0] = 0xA2; //C2 - Pressure Offset
	i2c = HAL_I2C_Master_Transmit(&hi2c1, MS5607_ADDR, dataBuf, 1,
			HAL_MAX_DELAY);
	i2c = HAL_I2C_Master_Receive(&hi2c1, MS5607_ADDR, dataBuf, 2,
			HAL_MAX_DELAY);
	C2 = (dataBuf[0] << 8) | (dataBuf[1]);

	dataBuf[0] = 0xA3; //C3 - Temperature Coefficient of Pressure Sensitivity
	i2c = HAL_I2C_Master_Transmit(&hi2c1, MS5607_ADDR, dataBuf, 1,
			HAL_MAX_DELAY);
	i2c = HAL_I2C_Master_Receive(&hi2c1, MS5607_ADDR, dataBuf, 2,
			HAL_MAX_DELAY);
	C3 = (dataBuf[0] << 8) | (dataBuf[1]);

	dataBuf[0] = 0xA4; //C4 - Temperature Coefficient of Pressure Offset
	i2c = HAL_I2C_Master_Transmit(&hi2c1, MS5607_ADDR, dataBuf, 1,
			HAL_MAX_DELAY);
	i2c = HAL_I2C_Master_Receive(&hi2c1, MS5607_ADDR, dataBuf, 2,
			HAL_MAX_DELAY);
	C4 = (dataBuf[0] << 8) | (dataBuf[1]);

	dataBuf[0] = 0xA5; //C5 - Reference Temperature
	i2c = HAL_I2C_Master_Transmit(&hi2c1, MS5607_ADDR, dataBuf, 1,
			HAL_MAX_DELAY);
	i2c = HAL_I2C_Master_Receive(&hi2c1, MS5607_ADDR, dataBuf, 2,
			HAL_MAX_DELAY);
	C5 = (dataBuf[0] << 8) | (dataBuf[1]);

	dataBuf[0] = 0xA6; //C6 - Temperature coefficient of the temperature
	i2c = HAL_I2C_Master_Transmit(&hi2c1, MS5607_ADDR, dataBuf, 1,
			HAL_MAX_DELAY);
	i2c = HAL_I2C_Master_Receive(&hi2c1, MS5607_ADDR, dataBuf, 2,
			HAL_MAX_DELAY);
	C6 = (dataBuf[0] << 8) | (dataBuf[1]);
	/*--------------------------------*/

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	while (1) {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

		/*--------MS5607_READ-------------*/
		//start temp reading (0x58), start adc reading (0x00), store data in rawTemp
		dataBuf[0] = 0x58;
		i2c = HAL_I2C_Master_Transmit(&hi2c1, MS5607_ADDR, dataBuf, 1,
				HAL_MAX_DELAY);
		dataBuf[0] = 0x00;
		i2c = HAL_I2C_Master_Transmit(&hi2c1, MS5607_ADDR, dataBuf, 1,
				HAL_MAX_DELAY);
		i2c = HAL_I2C_Master_Receive(&hi2c1, MS5607_ADDR, dataBuf, 3,
				HAL_MAX_DELAY);
		rawTemp = (dataBuf[0] << 16) | (dataBuf[1] << 8) | (dataBuf[2]);

		//start pressure reading (0x48), start adc reading (0x00), store data in rawPressure
		dataBuf[0] = 0x48;
		i2c = HAL_I2C_Master_Transmit(&hi2c1, MS5607_ADDR, dataBuf, 1,
				HAL_MAX_DELAY);
		dataBuf[0] = 0x00;
		i2c = HAL_I2C_Master_Transmit(&hi2c1, MS5607_ADDR, dataBuf, 1,
				HAL_MAX_DELAY);
		i2c = HAL_I2C_Master_Receive(&hi2c1, MS5607_ADDR, dataBuf, 3,
				HAL_MAX_DELAY);
		rawPressure = (dataBuf[0] << 16) | (dataBuf[1] << 8) | (dataBuf[2]);

		//calculate the temperature
		dT = rawTemp - (C5 * 2 ^ 8);
		TEMP = 2000 + dT * C6 / (2 ^ 23);

		//calculate temperature compensated pressure
		OFF = C2 * (2 ^ 17) + (C4 * dT) / (2 ^ 6);
		SENS = C1 * (2 ^ 16) + (C3 * dT) / (2 ^ 7);
		P = (rawPressure * SENS / (2 ^ 21) - OFF) / (2 ^ 15);
		/*--------------------------------*/

	}
	/* int x;
	 for(x=40; x<1000; x=x+1)
	 {
	 __HAL_TIM_SET_AUTORELOAD(&hTIM4, x*2);
	 __HAL_TIM_SET_COMPARE(&hTIM4, TIM_CHANNEL_1, x);
	 HAL_Delay(100);
	 }*/
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE0) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 2;
  RCC_OscInitStruct.PLL.PLLN = 12;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV4;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.Timing = 0x009032AE;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Analogue filter
  */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c1, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Digital filter
  */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c1, 0) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief ICACHE Initialization Function
  * @param None
  * @retval None
  */
static void MX_ICACHE_Init(void)
{

  /* USER CODE BEGIN ICACHE_Init 0 */

  /* USER CODE END ICACHE_Init 0 */

  /* USER CODE BEGIN ICACHE_Init 1 */

  /* USER CODE END ICACHE_Init 1 */

  /** Enable instruction cache (default 2-ways set associative cache)
  */
  if (HAL_ICACHE_Enable() != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ICACHE_Init 2 */

  /* USER CODE END ICACHE_Init 2 */

}

/**
  * @brief TIM4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM4_Init(void)
{

  /* USER CODE BEGIN TIM4_Init 0 */

  /* USER CODE END TIM4_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM4_Init 1 */

  /* USER CODE END TIM4_Init 1 */
  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 127;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 20;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM4_Init 2 */

  /* USER CODE END TIM4_Init 2 */
  HAL_TIM_MspPostInit(&htim4);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOE, GPIO_PIN_14, GPIO_PIN_RESET);

  /*Configure GPIO pin : PE14 */
  GPIO_InitStruct.Pin = GPIO_PIN_14;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
		/* User can add his own implementation to report the HAL error return state */
		__disable_irq();
		while (1) {
		}
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
