/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "ssd1306.h"
#include "stdio.h"
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

TIM_HandleTypeDef htim2;

UART_HandleTypeDef huart1;

/* USER CODE BEGIN PV */
uint8_t aRxBuffer[2];
uint8_t TxBuffer[2];
uint8_t charBuffer[10];
uint16_t temp;

volatile uint8_t read_state = 0;
uint8_t state_SW_U = 0;
uint8_t state_SW_D = 0;
uint8_t state_SW_L = 0;
uint8_t state_SW_R = 0;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_I2C1_Init(void);
static void MX_TIM2_Init(void);
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
  MX_USART1_UART_Init();
  MX_I2C1_Init();
  MX_TIM2_Init();
  /* USER CODE BEGIN 2 */
  ssd1306_Init();

  //resetting ina237
  TxBuffer[0] = 0x80;
  TxBuffer[1] = 0x00;
  HAL_I2C_Mem_Write(&hi2c1, 0x45<<1, 0x00, 1, TxBuffer, sizeof(TxBuffer), 1000);

  //setting adc range
  TxBuffer[0] = 0x00;
  TxBuffer[1] = 0x10;
  HAL_I2C_Mem_Write(&hi2c1, 0x45<<1, 0x00, 1, TxBuffer, sizeof(TxBuffer), 1000);

  //calibrating shunt register
  TxBuffer[0] = 0x07;
  TxBuffer[1] = 0xD0;
  HAL_I2C_Mem_Write(&hi2c1, 0x45<<1, 0x02, 1, TxBuffer, sizeof(TxBuffer), 1000);

  //read adc_config
  HAL_I2C_Mem_Read(&hi2c1, 0x45<<1, 0x01, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
  temp = (aRxBuffer[0]<<8) | aRxBuffer[1];
  TxBuffer[0] = aRxBuffer[0];
  TxBuffer[1] = aRxBuffer[1] | 0x03;
  HAL_I2C_Mem_Write(&hi2c1, 0x45<<1, 0x01, 1, TxBuffer, sizeof(TxBuffer), 1000);

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */


	  switch (read_state) {
	  	  case 0:
			  //current
			  HAL_I2C_Mem_Read(&hi2c1, 0x45<<1, 0x07, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
			  temp = 0.0610352*(float)((aRxBuffer[0]<<8) | aRxBuffer[1]);
			  sprintf(charBuffer, "%u mA\r\n", temp);
	  		  break;
	  	  case 1:
			  //vshunt
			  HAL_I2C_Mem_Read(&hi2c1, 0x45<<1, 0x04, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
			  temp = 1.25*(float)((aRxBuffer[0]<<8) | aRxBuffer[1]);
			  sprintf(charBuffer, "%u uV\r\n", temp);
	  		  break;
	  	  case 2:
	  		  break;
	  	  default:
		  	  read_state = 0;
		  	  break;
	  }



	  ssd1306_Fill(Black);
	  ssd1306_SetCursor(0, 0);
	  ssd1306_WriteString(&charBuffer, Font_16x26, White);
	  //ssd1306_UpdateScreen();

	  sprintf(charBuffer,"%u\r\n", read_state);

	  //ssd1306_Fill(Black);
	  ssd1306_SetCursor(96, 0);
	  ssd1306_WriteString(&charBuffer, Font_11x18, White);
	  ssd1306_UpdateScreen();

	  HAL_Delay(100);
  }
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
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
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
  hi2c1.Init.ClockSpeed = 100000;
  hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 16000;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 50;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

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
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /*Configure GPIO pins : SW_R_Pin SW_D_Pin SW_L_Pin SW_U_Pin */
  GPIO_InitStruct.Pin = SW_R_Pin|SW_D_Pin|SW_L_Pin|SW_U_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI15_10_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

}

/* USER CODE BEGIN 4 */
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin) {
	switch (GPIO_Pin) {
		case SW_U_Pin:
			switch (state_SW_U) {
				case 0:
					state_SW_U = 1;
					HAL_TIM_Base_Start_IT(&htim2);
					break;
				case 1:
					break;
				default:
					break;
			}
			break;
		case SW_D_Pin:
			switch (state_SW_D) {
				case 0:
					state_SW_D = 1;
					HAL_TIM_Base_Start_IT(&htim2);
					break;
				case 1:
					break;
				default:
					break;
			}
			break;
		case SW_L_Pin:
			switch (state_SW_L) {
				case 0:
					state_SW_L = 1;
					HAL_TIM_Base_Start_IT(&htim2);
					break;
				case 1:
					break;
				default:
					break;
			}
			break;
		case SW_R_Pin:
			switch (state_SW_R) {
				case 0:
					state_SW_R = 1;
					HAL_TIM_Base_Start_IT(&htim2);
					break;
				case 1:
					break;
				default:
					break;
			}
			break;
		default:
			break;
	}
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  if (htim == &htim2) {
	 if (state_SW_U == 1 && HAL_GPIO_ReadPin(SW_U_GPIO_Port, SW_U_Pin) == GPIO_PIN_RESET) {
		 state_SW_U = 0;
		 HAL_TIM_Base_Stop_IT(&htim2);

		 if (read_state == 2) {
			 read_state = 0;
		 } else {
			 read_state++;
		 }
	 }
	 if (state_SW_D == 1 && HAL_GPIO_ReadPin(SW_D_GPIO_Port, SW_D_Pin) == GPIO_PIN_RESET) {
		 state_SW_D = 0;
		 HAL_TIM_Base_Stop_IT(&htim2);

		 if (read_state == 0) {
			 read_state = 2;
		 } else {
			 read_state--;
		 }
	 }
	 if (state_SW_L == 1 && HAL_GPIO_ReadPin(SW_L_GPIO_Port, SW_L_Pin) == GPIO_PIN_RESET) {
		 state_SW_L = 0;
		 HAL_TIM_Base_Stop_IT(&htim2);
	 }
	 if (state_SW_R == 1 && HAL_GPIO_ReadPin(SW_R_GPIO_Port, SW_R_Pin) == GPIO_PIN_RESET) {
		 state_SW_R = 0;
		 HAL_TIM_Base_Stop_IT(&htim2);
	 }
  }
}
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
  while (1)
  {
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

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
