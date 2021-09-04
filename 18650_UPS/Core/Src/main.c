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
uint8_t aRxBuffer[3];
uint8_t TxBuffer[2];
uint8_t charBuffer[10];
uint16_t temp;

volatile uint8_t read_state = 0;
uint8_t state_SW_U = 0;
uint8_t state_SW_D = 0;
uint8_t state_SW_L = 0;
uint8_t state_SW_R = 0;

volatile uint8_t contrast = 0xFF;
volatile uint8_t charge_enable = 1;
volatile uint8_t usb_version = 2;
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

  //adc_config
  HAL_I2C_Mem_Read(&hi2c1, 0x45<<1, 0x01, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
  temp = (aRxBuffer[0]<<8) | aRxBuffer[1];
  TxBuffer[0] = aRxBuffer[0];
  TxBuffer[1] = aRxBuffer[1] | 0x05;
  HAL_I2C_Mem_Write(&hi2c1, 0x45<<1, 0x01, 1, TxBuffer, sizeof(TxBuffer), 1000);

  //charge config default
  HAL_I2C_Mem_Read(&hi2c1, 0x09<<1, 0x01, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
  TxBuffer[0] = 0b00000100; 	//charge enable and UVLO 2.8V
  TxBuffer[1] = 0x00;
  HAL_I2C_Mem_Write(&hi2c1, 0x09<<1, 0x01, 1, TxBuffer, 1, 1000);
  HAL_I2C_Mem_Read(&hi2c1, 0x09<<1, 0x01, 1, aRxBuffer, sizeof(aRxBuffer), 1000);

  //setting initial charge curretn to usb 2 compliant
  TxBuffer[0] = 0b01001011;
  TxBuffer[1] = 0x00;
  HAL_I2C_Mem_Write(&hi2c1, 0x09<<1, 0x00, 1, TxBuffer, 1, 1000);
  TxBuffer[0] = 0b00001110;
  TxBuffer[1] = 0x00;
  HAL_I2C_Mem_Write(&hi2c1, 0x09<<1, 0x02, 1, TxBuffer, 1, 1000);

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

	  ssd1306_Fill(Black);

	  switch (read_state) {
	  	  case 0:
	  		  //vbus
			  HAL_I2C_Mem_Read(&hi2c1, 0x45<<1, 0x05, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
			  temp = 3.125*(float)((aRxBuffer[0]<<8) | aRxBuffer[1]);
			  sprintf(charBuffer, "%u mV", temp);
			  ssd1306_SetCursor(0, 14);
			  ssd1306_WriteString(&charBuffer, Font_11x18, White);
			  sprintf(charBuffer, "Voltage:");
			  ssd1306_SetCursor(0, 0);
			  ssd1306_WriteString(&charBuffer, Font_7x10, White);
			  ssd1306_DrawRectangle(124, 0, 127, 3, White);
			  ssd1306_DrawRectangle(125, 1, 126, 2, White);
	  		  break;
	  	  case 1:
			  //current
			  HAL_I2C_Mem_Read(&hi2c1, 0x45<<1, 0x07, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
			  temp = 0.0610352*(float)((aRxBuffer[0]<<8) | aRxBuffer[1]);
			  sprintf(charBuffer, "%u mA", temp);
			  ssd1306_SetCursor(0, 14);
			  ssd1306_WriteString(&charBuffer, Font_11x18, White);
			  sprintf(charBuffer, "Current output:");
			  ssd1306_SetCursor(0, 0);
			  ssd1306_WriteString(&charBuffer, Font_7x10, White);
			  ssd1306_DrawRectangle(124, 4, 127, 7, White);
			  ssd1306_DrawRectangle(125, 5, 126, 6, White);
	  		  break;
	  	  case 2:
			  //power
			  HAL_I2C_Mem_Read(&hi2c1, 0x45<<1, 0x08, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
			  temp = 0.2*0.0610352*(float)((aRxBuffer[0]<<16) | aRxBuffer[1]<<8 | aRxBuffer[0]);
			  sprintf(charBuffer, "%u mW", temp);
			  ssd1306_SetCursor(0, 14);
			  ssd1306_WriteString(&charBuffer, Font_11x18, White);
			  sprintf(charBuffer, "Power output:");
			  ssd1306_SetCursor(0, 0);
			  ssd1306_WriteString(&charBuffer, Font_7x10, White);
			  ssd1306_DrawRectangle(124, 8, 127, 11, White);
			  ssd1306_DrawRectangle(125, 9, 126, 10, White);
			  break;
	  	  case 3:
			  //dietemp
			  HAL_I2C_Mem_Read(&hi2c1, 0x45<<1, 0x06, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
			  temp = 0.125*(float)((aRxBuffer[0]<<8) | aRxBuffer[1]);
			  temp = temp>>4;
			  sprintf(charBuffer, "%u C", temp);
			  ssd1306_SetCursor(0, 14);
			  ssd1306_WriteString(&charBuffer, Font_11x18, White);
			  sprintf(charBuffer, "Board temperature:");
			  ssd1306_SetCursor(0, 0);
			  ssd1306_WriteString(&charBuffer, Font_7x10, White);
			  ssd1306_DrawRectangle(124, 12, 127, 15, White);
			  ssd1306_DrawRectangle(125, 13, 126, 14, White);
			  break;
	  	  case 4:
			  //charge status
			  HAL_I2C_Mem_Read(&hi2c1, 0x09<<1, 0x07, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
			  temp = (aRxBuffer[0] & 0b00011000)>>3;
			  switch (temp) {
				  case 0:
					  sprintf(charBuffer, "No charger");
					  ssd1306_SetCursor(0, 14);
					  ssd1306_WriteString(&charBuffer, Font_11x18, White);
					  break;
				  case 1:
					  sprintf(charBuffer, "Pre charge");
					  ssd1306_SetCursor(0, 14);
					  ssd1306_WriteString(&charBuffer, Font_11x18, White);
					  break;
				  case 2:
					  sprintf(charBuffer, "Charging...");
					  ssd1306_SetCursor(0, 14);
					  ssd1306_WriteString(&charBuffer, Font_11x18, White);
					  break;
				  case 3:
					  sprintf(charBuffer, "Done!");
					  ssd1306_SetCursor(0, 14);
					  ssd1306_WriteString(&charBuffer, Font_11x18, White);
					  break;
				  default:
					  break;
			  }
			  sprintf(charBuffer, "Charge status:");
			  ssd1306_SetCursor(0, 0);
			  ssd1306_WriteString(&charBuffer, Font_7x10, White);
			  ssd1306_DrawRectangle(124, 16, 127, 19, White);
			  ssd1306_DrawRectangle(125, 17, 126, 18, White);
			  break;
		  case 5:
			  if (charge_enable == 0) {
				  sprintf(charBuffer, "OFF");
				  ssd1306_SetCursor(1, 14);
				  ssd1306_WriteString(&charBuffer, Font_11x18, Black);
				  sprintf(charBuffer, "ON ");
				  ssd1306_SetCursor(38, 14);
				  ssd1306_WriteString(&charBuffer, Font_11x18, White);
			  } else if (charge_enable == 1) {
				  sprintf(charBuffer, "OFF");
				  ssd1306_SetCursor(1, 14);
				  ssd1306_WriteString(&charBuffer, Font_11x18, White);
				  sprintf(charBuffer, "ON ");
				  ssd1306_SetCursor(38, 14);
				  ssd1306_WriteString(&charBuffer, Font_11x18, Black);
			  }
			  ssd1306_DrawRectangle(0, 13, 70, 31, White);


			  sprintf(charBuffer, "Charge control:");
			  ssd1306_SetCursor(0, 0);
			  ssd1306_WriteString(&charBuffer, Font_7x10, White);
			  ssd1306_DrawRectangle(124, 20, 127, 23, White);
			  ssd1306_DrawRectangle(125, 21, 126, 22, White);
			  break;
		  case 6:
			  if (usb_version == 2) {
				  sprintf(charBuffer, "0.5A");
				  ssd1306_SetCursor(1, 14);
				  ssd1306_WriteString(&charBuffer, Font_11x18, Black);
				  sprintf(charBuffer, "1.0A");
				  ssd1306_SetCursor(50, 14);
				  ssd1306_WriteString(&charBuffer, Font_11x18, White);
			  } else if (usb_version == 3) {
				  sprintf(charBuffer, "0.5A");
				  ssd1306_SetCursor(1, 14);
				  ssd1306_WriteString(&charBuffer, Font_11x18, White);
				  sprintf(charBuffer, "1.0A ");
				  ssd1306_SetCursor(50, 14);
				  ssd1306_WriteString(&charBuffer, Font_11x18, Black);
			  }
			  ssd1306_DrawRectangle(0, 13, 104, 31, White);

			  sprintf(charBuffer, "USB current limit:");
			  ssd1306_SetCursor(0, 0);
			  ssd1306_WriteString(&charBuffer, Font_7x10, White);
			  ssd1306_DrawRectangle(124, 24, 127, 27, White);
			  ssd1306_DrawRectangle(125, 25, 126, 26, White);
			  break;
		  case 7:
			  switch (contrast) {
				  case 255:
					  sprintf(charBuffer, "100");
					  break;
				  case 191:
					  sprintf(charBuffer, "75");
					  break;
				  case 127:
					  sprintf(charBuffer, "50");
					  break;
				  case 63:
					  sprintf(charBuffer, "25");
					  break;
				  case 0:
					  sprintf(charBuffer, "0");
					  break;
				  default:
					  break;
			  }

			  ssd1306_SetCursor(0, 14);
			  ssd1306_WriteString(&charBuffer, Font_11x18, White);
			  sprintf(charBuffer, "Screen brightness:");
			  ssd1306_SetCursor(0, 0);
			  ssd1306_WriteString(&charBuffer, Font_7x10, White);
			  ssd1306_DrawRectangle(124, 28, 127, 31, White);
			  ssd1306_DrawRectangle(125, 29, 126, 30, White);
		  	  break;
	  	  default:
		  	  break;
	  }

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
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_5;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
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
  htim2.Init.Prescaler = 2097;
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
  huart1.Init.BaudRate = 9600;
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
			state_SW_U = 1;
			HAL_TIM_Base_Start_IT(&htim2);
			break;
		case SW_D_Pin:
			state_SW_D = 1;
			HAL_TIM_Base_Start_IT(&htim2);
			break;
		case SW_L_Pin:
			state_SW_L = 1;
			HAL_TIM_Base_Start_IT(&htim2);
			break;
		case SW_R_Pin:
			state_SW_R = 1;
			HAL_TIM_Base_Start_IT(&htim2);
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

		 if (read_state == 0) {
			 //read_state = 7;
		 } else {
			 read_state--;
		 }
	 }
	 if (state_SW_D == 1 && HAL_GPIO_ReadPin(SW_D_GPIO_Port, SW_D_Pin) == GPIO_PIN_RESET) {
		 state_SW_D = 0;
		 HAL_TIM_Base_Stop_IT(&htim2);

		 if (read_state == 7) {
			 //read_state = 0;
		 } else {
			 read_state++;
		 }
	 }
	 if (state_SW_L == 1 && HAL_GPIO_ReadPin(SW_L_GPIO_Port, SW_L_Pin) == GPIO_PIN_RESET) {
		 state_SW_L = 0;
		 HAL_TIM_Base_Stop_IT(&htim2);

		 switch (read_state) {
		 	 case 5:
		 		 charge_enable = 0;

		 		 HAL_I2C_Mem_Read(&hi2c1, 0x09<<1, 0x01, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
		 		 TxBuffer[0] = aRxBuffer[0] | 0b00001000;
		 		 TxBuffer[1] = 0x00;
		 		 HAL_I2C_Mem_Write(&hi2c1, 0x09<<1, 0x01, 1, TxBuffer, 1, 1000);
		 		 HAL_I2C_Mem_Read(&hi2c1, 0x09<<1, 0x01, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
		 		 break;
		 	 case 6:
		 		 usb_version = 2;
		 		 TxBuffer[0] = 0b01001011;
				 TxBuffer[1] = 0x00;
				 HAL_I2C_Mem_Write(&hi2c1, 0x09<<1, 0x00, 1, TxBuffer, 1, 1000);
				 TxBuffer[0] = 0b00001110;
				 TxBuffer[1] = 0x00;
				 HAL_I2C_Mem_Write(&hi2c1, 0x09<<1, 0x02, 1, TxBuffer, 1, 1000);
		 		 break;
		 	 case 7:
		 		 if (contrast > 63) {
		 			 contrast = contrast-64;
		 		 	 ssd1306_SetContrast(contrast);
		 		 } else if (contrast == 63) {
		 			 contrast = contrast-63;
		 			 ssd1306_SetContrast(contrast);
		 		 }
		 		 break;
		 	 default:
		 		 break;
		 }


	 }
	 if (state_SW_R == 1 && HAL_GPIO_ReadPin(SW_R_GPIO_Port, SW_R_Pin) == GPIO_PIN_RESET) {
		 state_SW_R = 0;
		 HAL_TIM_Base_Stop_IT(&htim2);

		 switch (read_state) {
		 	 case 5:
		 		 charge_enable = 1;
		 		 HAL_I2C_Mem_Read(&hi2c1, 0x09<<1, 0x01, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
				 TxBuffer[0] = aRxBuffer[0] & 0b11110111;
				 TxBuffer[1] = 0x00;
				 HAL_I2C_Mem_Write(&hi2c1, 0x09<<1, 0x01, 1, TxBuffer, 1, 1000);
				 HAL_I2C_Mem_Read(&hi2c1, 0x09<<1, 0x01, 1, aRxBuffer, sizeof(aRxBuffer), 1000);
		 		 break;
		 	 case 6:
		 		 usb_version = 3;
		 		 TxBuffer[0] = 0b01001111;
				 TxBuffer[1] = 0x00;
				 HAL_I2C_Mem_Write(&hi2c1, 0x09<<1, 0x00, 1, TxBuffer, 1, 1000);
				 TxBuffer[0] = 0b00011100;
				 TxBuffer[1] = 0x00;
				 HAL_I2C_Mem_Write(&hi2c1, 0x09<<1, 0x02, 1, TxBuffer, 1, 1000);
		 		 break;
		 	 case 7:
		 		 if (contrast == 0) {
		 			 contrast = contrast+63;
		 		 	 ssd1306_SetContrast(contrast);
		 		 } else if (contrast > 0 && contrast != 255) {
		 			 contrast = contrast+64;
					 ssd1306_SetContrast(contrast);
		 		 }
		 		 break;
		 	 default:
		 		 break;
		 }
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
