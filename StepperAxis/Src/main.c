/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Prof Flämig
 * @brief          : Main program for control of amis stepper IC for linear axis
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2024 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
/*
#if !defined(__SOFT_FP__) && defined(__ARM_FP)
  #warning "FPU is not initialized, but the project is compiling for an FPU. Please initialize the FPU before use."
#endif
*/

#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <math.h>

#include <regler.h>

#include <mcalSysTick.h>
#include <mcalGPIO.h>

//using I2C Interface
#include <mcalI2C.h>

// ST7735 TFT Display Ansteuerung eines TFT Display ueber SPI.
#include <mcalSPI.h>
#include <ST7735.h>

// used Rot-Push Buttom
#include <RotaryPushButton.h>
#include <BALO.h>


/* declaration for the timer events to schedule the process (-es)
*/
bool timerTrigger = false;

// Declaration  Timer1 = Main Prog
// 				ST7725_Timer delay Counter
uint32_t	Timer1 = 0UL;
uint32_t    ST7735_Timer = 0UL;
uint32_t    Timer100ms = 0UL;

uint8_t *convDecByteToHex(uint8_t byte)
{
    static  uint8_t hex[2] = { 0 };

    uint8_t temp;

    temp = byte % 16;
    if (temp < 10)
    {
        temp += '0';
    }
    else
    {
        temp += '7';
    }
    hex[1] = temp;

    temp = byte / 16;
    if (temp < 10)
    {
        temp += '0';
    }
    else
    {
        temp += '7';
    }
    hex[0] = temp;

    return hex;
}

uint8_t I2C_SCAN(I2C_TypeDef *i2c, uint8_t scanAddr)
{
	uint8_t 	*outString2 = (uint8_t *) "Addr at: \0";
	uint8_t     port, *result;
#define yPosBase 18
	uint8_t foundAddr = 0;
	static int xPos[2] = {0,100};
	static int yPos[2] = {yPosBase, yPosBase};

	if (i2c == I2C1)
    {
	   port = 0;
    }
    else
    {
	   port = 1;
    }
    if (scanAddr == 0)
    {
    yPos[0] = yPosBase;
    yPos[1] = yPosBase;
    }

	foundAddr = i2cFindSlaveAddr(i2c, scanAddr);
	if (yPos[port] == 0)
	{
		tftPrint((char *)outString2,xPos[port],yPos[port],0);
		yPos[port] = 66;
	}
	result = convDecByteToHex(scanAddr);
	if (foundAddr != 0)
	{
		//outString = outString2;
		tftPrint((char *)result,xPos[port],yPos[port],0);
		yPos[port] = (int) 14 + yPos[port];
		if (yPos[port] > 100)
		{
			yPos[port] = yPosBase;
		}
	}
	else
	{
	//	tftPrint((char *)result,xPos,14,0);
	}
	return foundAddr;

}



// TaskRoutine with 100ms cycletime
int Task100ms(void)
{

	float AlphaBeta[2];  // Wertepaar

	if (getRotaryPushButton() != 0)
	{
	  setRotaryPosition(0);
	  //initPID(&PID_Pos, 0.5, 0.5, 0.1, (float)0.0001*TaskTime100ms);
	}

   AlphaBeta[0] = (float)getRotaryPosition()/50;
   LED_blue_on;
	   //AlphaBeta[1] = runPID(&PID_Pos,AlphaBeta[0]);
   //LED_blue_off;

   if ((AlphaBeta[1] < -1) || (AlphaBeta[1] > 1))
   {
	   setRotaryColor(LED_RED);
   }
   else
   {
	   setRotaryColor(LED_YELLOW);
   }
   AlBeOszi(AlphaBeta);
   return(0);
}


int main(void)
{
	/**
	 *  I2C Variables

		uint8_t        scanAddr = 0x7F;  //7Bit Adresse
		I2C_TypeDef   *i2c  = I2C1;
		I2C_TypeDef   *i2c2  = I2C2;
	*/
	uint32_t   TaskTime100ms = 100UL;




	// This is the Array, of all Timer-Variables
    uint32_t *timerList[] = { &Timer100ms, &ST7735_Timer /*, additional timer */ };
	// size of the array  are calculated
	size_t    arraySize = sizeof(timerList)/sizeof(timerList[0]);

	    BALOsetup();
	    LED_red_on;

	   // struct PIDContr PID_Pos;


		// Inits needed for TFT Display
	    // Initialisiert den Systick-Timer
		systickInit(SYSTICK_1MS);
		spiInit();
		tftInitR(INITR_REDTAB);

		//display setup
	    tftSetRotation(LANDSCAPE);
	    tftSetFont((uint8_t *)&SmallFont[0]);
	    tftFillScreen(tft_BLACK);

	    /* initialize the rotary push button module */
	    initRotaryPushButton();

	    systickSetMillis(&Timer100ms, TaskTime100ms);

	    LED_red_off;
	    tftPrintColor((char *)"StepperAxis \0",0,0,tft_MAGENTA);

	    //initPID(&PID_Pos, 0.5, 0.5, 0.1, (float)0.0001*i2cTaskTime);  // Init der PID-Koeffizienten des Positions-Regler

	    while (1)
	    {
		   if (true == timerTrigger)
		   {
				systickUpdateTimerList((uint32_t *) timerList, arraySize);
		   }
		   if (isSystickExpired(Timer100ms))
		   {
			   systickSetTicktime(&Timer100ms, TaskTime100ms);
			   Task100ms();
		   }
	    } //end while
	    return 0;




}
