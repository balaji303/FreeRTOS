/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2022 STMicroelectronics.
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
#include "FreeRTOS.h"
#include "task.h"
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

/* USER CODE BEGIN PV */
#define DWT_CTRL (*(volatile uint32_t*)0xE0001000)
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
/* USER CODE BEGIN PFP */
void LedRedTask(void *parameter);
void LedGreenTask(void *parameter);
void LedYellowTask(void *parameter);
static void ButtonTask(void *parameter);
extern void SEGGER_UART_init(U32 baud);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
TaskHandle_t GreenTaskHandle;
TaskHandle_t RedTaskHandle;
TaskHandle_t YellowTaskHandle;
TaskHandle_t ButtonTaskHandle;
TaskHandle_t volatile Next_Task_Handle = NULL;
BaseType_t status;
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

  //To Start the Sysview recording we have to Call these
  SEGGER_UART_init(250000);//UART

  /* USER CODE BEGIN 2 */
  DWT_CTRL |= (1<<0); //Set the zeroth bit to one //SEGGER UART

  SEGGER_SYSVIEW_Conf();
//  SEGGER_SYSVIEW_Start(); //Already done in UART

  status = xTaskCreate( LedGreenTask, "Led_Green_Task", 200, NULL , 2, &GreenTaskHandle );
  configASSERT(status == pdPASS);

  Next_Task_Handle = GreenTaskHandle;

  status = xTaskCreate( LedRedTask, "Led_Red_Task", 200, NULL , 2, &RedTaskHandle );
  configASSERT(status == pdPASS);
  status = xTaskCreate( LedYellowTask, "Led_Yellow_Task", 200, NULL , 2, &YellowTaskHandle );
  configASSERT(status == pdPASS);
  status = xTaskCreate( ButtonTask, "Button_Task", 200, NULL , 2, &ButtonTaskHandle );
  configASSERT(status == pdPASS);
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  vTaskStartScheduler();
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
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
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 168;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 2;
  RCC_OscInitStruct.PLL.PLLR = 2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
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
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, LD2_Pin|GPIO_PIN_9, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_RESET);

  /*Configure GPIO pin : B1_Pin */
  GPIO_InitStruct.Pin = B1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : USART_TX_Pin USART_RX_Pin */
  GPIO_InitStruct.Pin = USART_TX_Pin|USART_RX_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
  GPIO_InitStruct.Alternate = GPIO_AF7_USART2;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : LD2_Pin PA9 */
  GPIO_InitStruct.Pin = LD2_Pin|GPIO_PIN_9;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : PC7 */
  GPIO_InitStruct.Pin = GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pin : PB6 */
  GPIO_InitStruct.Pin = GPIO_PIN_6;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */
void LedGreenTask(void *parameter){
	TickType_t last_wakeup_time;
	BaseType_t NotifyTaskStatus;
	last_wakeup_time = xTaskGetTickCount();
	while(1){
		SEGGER_SYSVIEW_PrintfTarget("GREEN LED Task");
		HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_9); //D8 or PA9
		NotifyTaskStatus = xTaskNotifyWait(0,0,NULL,pdMS_TO_TICKS(1000));
		if(NotifyTaskStatus == pdTRUE)
		{
			vTaskSuspendAll();
			Next_Task_Handle = YellowTaskHandle;
			xTaskResumeAll();
			HAL_GPIO_WritePin(GPIOA,GPIO_PIN_9,1);
			vTaskDelete(NULL); //Self-Delete
		}
		else
		{
			//Do Nothing
		}

	}/*End of Infinite Loop*/
}

void LedRedTask(void *parameter){
	TickType_t last_wakeup_time;
	BaseType_t NotifyTaskStatus;
	last_wakeup_time = xTaskGetTickCount();
	while(1){
		SEGGER_SYSVIEW_PrintfTarget("RED LED Task");
		HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_6); //D10 or PB6
		NotifyTaskStatus = xTaskNotifyWait(0,0,NULL,pdMS_TO_TICKS(1000));
		if(NotifyTaskStatus == pdTRUE)
		{
			vTaskSuspendAll();
			Next_Task_Handle = NULL;
			xTaskResumeAll();
			HAL_GPIO_WritePin(GPIOB,GPIO_PIN_6,1);
			vTaskDelete(ButtonTaskHandle);
			vTaskDelete(NULL); //Self-Delete

		}
		else
		{
			//Do Nothing
		}
	}/*End of Infinite Loop*/
}

void LedYellowTask(void *parameter){
	TickType_t last_wakeup_time;
	BaseType_t NotifyTaskStatus;
	last_wakeup_time = xTaskGetTickCount();
	while(1){
		SEGGER_SYSVIEW_PrintfTarget("YELLOW LED Task");
		HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_7); //D9 or PC7
		NotifyTaskStatus = xTaskNotifyWait(0,0,NULL,pdMS_TO_TICKS(1000));
		if(NotifyTaskStatus == pdTRUE)
		{
			vTaskSuspendAll();
			Next_Task_Handle = RedTaskHandle;
			xTaskResumeAll();
			HAL_GPIO_WritePin(GPIOC,GPIO_PIN_7,1);
			vTaskDelete(NULL); //Self-Delete
		}
		else
		{
			//Do Nothing
		}
	}/*End of Infinite Loop*/
}

void ButtonTask(void *parameter){
	uint8_t currentState = 1;
	uint8_t prevState = 1;
	while(1){
		currentState = HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13);
		if (currentState == GPIO_PIN_RESET)
		{
			if(prevState)
			{
				xTaskNotify(Next_Task_Handle,0,eNoAction);
			}

		}
		prevState = currentState;
		vTaskDelay(pdMS_TO_TICKS(10));
	}/*End of Infinite Loop*/
}

/* USER CODE END 4 */

 /**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM5 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM5) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

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
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
