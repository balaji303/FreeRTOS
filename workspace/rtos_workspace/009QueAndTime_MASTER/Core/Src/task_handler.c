/*
 * task_handler.c
 *
 *  Created on: Feb 28, 2022
 *      Author: Balaji
 */
#include "main.h"

/* File Constants */
const char* msgInvalid = "!!! INVALID ENTRY !!!\n";

/* Function Declaration */

void extract_command(CommandType_t *cmd);
void process_command( CommandType_t *command );

/* Function Definition */

void menuTask(void *parameter)
{
	uint32_t cmdNotifyWait;
	CommandType_t *commandReceieved;
	int options;
	const char* msgMenu = 	"@@@@@@@@@@@@@@@@@@\n"
							"|	    Menu      |\n"
							"@@@@@@@@@@@@@@@@@@\n"
							"LED EFFECT    ->0 \n"
							"DATE AND TIME ->1 \n"
							"EXIT          ->2 \n"
							"ENTER YOUR CHOICE :";
	while(1)
	{
		xQueueSend(qPrint, &msgMenu, portMAX_DELAY);
		/* Wait Until a Notification is receieved */
		xTaskNotifyWait(0,0,&cmdNotifyWait,portMAX_DELAY);
		commandReceieved = (CommandType_t*) cmdNotifyWait;

		if( commandReceieved->length == 1 )
		{
			/* Converting ASCII to number by subtracting with 1 */
			options = commandReceieved->payload[0] - 48;
			switch(options)
			{
				case 0:
						/* Process LED menu */
						xTaskNotify(ledTaskHandle,0,eNoAction);
						break;
				case 1:
						/* Process RTC menu */
						xTaskNotify(rtcTaskHandle,0,eNoAction);
						break;
				case 2:
						/* Exits */
						break;
				default:
						/* Process invalid number entry */
						xQueueSend(qPrint, &msgInvalid, portMAX_DELAY);
						continue;
			}

		}
		else
		{
			xQueueSend(qPrint, &msgInvalid, portMAX_DELAY);
		}

		/* Wait for the command */
		xTaskNotifyWait(0,0,NULL,portMAX_DELAY);
	}/*End of Infinite Loop*/
}

void cmdTask(void *parameter)
{
	BaseType_t notifyTaskStatus;
	CommandType_t cmd;
	while(1)
	{
		/*Implement notify wait */
		notifyTaskStatus = xTaskNotifyWait(0,0,NULL,portMAX_DELAY);
		if (notifyTaskStatus == pdTRUE)
		{
			/*Receieved a notification*/
			process_command(&cmd); /*Helper Function*/
		}
		else{
			/*No notification*/
		}
		/*Process the user data stored in input data queue */
		//		SEGGER_SYSVIEW_PrintfTarget("RED LED Task");
	}/*End of Infinite Loop*/
}

void printTask(void *parameter)
{

	while(1)
	{
		HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_7); //D9 or PC7
		vTaskDelay(pdMS_TO_TICKS(500));
//		SEGGER_SYSVIEW_PrintfTarget("YELLOW LED Task");
//		taskYIELD(); //USED WHEN configUSE_PREEMPTION is zero
	}/*End of Infinite Loop*/
}

void ledTask(void *parameter)
{
	uint32_t cmdNotifyWait;
	CommandType_t *commandReceieved;
	int options;
	const char* msgMenu = 	"@@@@@@@@@@@@@@@@@@\n"
							"|	 LED EFFECT   |\n"
							"@@@@@@@@@@@@@@@@@@\n"
							"LED EFFECT   ->0 \n"
							"LED EFFECT   ->1 \n"
							"LED EFFECT   ->2 \n"
							"LED EFFECT   ->3 \n"
							"LED EFFECT   ->4 \n"
							"ENTER YOUR CHOICE :";
	while(1)
	{
		/* Wait for the command */
		xTaskNotifyWait(0,0,NULL,portMAX_DELAY);

		xQueueSend(qPrint, &msgMenu, portMAX_DELAY);
		/* Wait Until a Notification is receieved */
		xTaskNotifyWait(0,0,&cmdNotifyWait,portMAX_DELAY);
		commandReceieved = (CommandType_t*) cmdNotifyWait;

		if( commandReceieved->length == 1 )
		{
			/* Converting ASCII to number by subtracting with 1 */
			options = commandReceieved->payload[0] - 48;
			switch(options)
			{
				case 0:
						ledEffectStop();
				case 1:
						ledEffect(1);
				case 2:
						ledEffect(2);
				case 3:
						ledEffect(3);
				case 4:
						ledEffect(4);
				default:
						xQueueSend(qPrint, &msgInvalid, portMAX_DELAY);
			}

		}
		else
		{
			xQueueSend(qPrint, &msgInvalid, portMAX_DELAY);
		}
		currentState = sMainMenu;
		xTaskNotify( menuTaskHandle, 0, eNoAction);

	}/*End of Infinite Loop*/
}

void rtcTask(void *parameter)
{

	while(1)
	{
		HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_7); //D9 or PC7
		vTaskDelay(pdMS_TO_TICKS(500));
//		SEGGER_SYSVIEW_PrintfTarget("YELLOW LED Task");
//		taskYIELD(); //USED WHEN configUSE_PREEMPTION is zero
	}/*End of Infinite Loop*/
}

void process_command( CommandType_t *command )
{
	extract_command(command);

	switch(currentState)
	{
		case sMainMenu:
			xTaskNotify( menuTaskHandle, ( uint32_t )command, eSetValueWithOverwrite);
			break;
		case sLedEffect:
			xTaskNotify( ledTaskHandle, ( uint32_t )command, eSetValueWithOverwrite);
			break;
		/* All RTC command has same Task Notification Process */
		case sRtcMenu:
		case sRtcTimeConfig:
		case sRtcDateConfig:
		case sRtcReport:
			xTaskNotify( rtcTaskHandle, ( uint32_t )command, eSetValueWithOverwrite);
			break;
	}/* end of switch*/
}/* end of process_command() */

void extract_command(CommandType_t *cmd)
{
	uint8_t rxByte = 0;
	uint8_t iteration = 0;
	BaseType_t status;
	status = uxQueueMessagesWaiting(qData);
	if ( status == pdFALSE )
	{
		/* Queue is empty */
		for(;;);
	}

	do
	{
		status = xQueueReceive(qData,&rxByte,0);
		if(status == pdTRUE)
		{
			/* Receieve is Success */
			/* Store the data byte in payload */
			cmd->payload[ iteration++ ] = rxByte;
		}
	}while(	rxByte != '\n');
	/* Replace \n with \0 */
	cmd->payload[ iteration - 1 ] = '\0';
	/* Save the length of the command excluding the null char */
	cmd->length = iteration - 1;
}
