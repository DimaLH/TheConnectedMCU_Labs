
#include <xc.h>              /* Defines special function registers, CP0 regs  */
#include <stdint.h>          /* For uint32_t definition                       */
#include <sys/attribs.h>

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

#include "user.h"            /* variables/params used by user.c               */
#include "OLED.h"
#include "OledChar.h"
#include "OledGrph.h"
#include "UART.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************


/******************************************************************************/
/* User Functions                                                             */

/******************************************************************************/

//volatile    uint16_t counter = 0;

void InitGPIO(void) {
    // LED output
    // Disable analog mode for G6
    ANSELGbits.ANSG6 = 0;
    // Set direction to output for G6
    TRISGbits.TRISG6 = 0;

    // Initialize outputs for other LEDs
    ANSELBbits.ANSB11 = 0;
    ANSELGbits.ANSG15 = 0;

    TRISBbits.TRISB11 = 0;
    TRISGbits.TRISG15 = 0;
    TRISDbits.TRISD4 = 0;

    // Turn off LEDs for initialization
    LD1_PORT_BIT = 0;
    LD2_PORT_BIT = 0;
    LD3_PORT_BIT = 0;
    LD4_PORT_BIT = 0;

    // Initilalize input for BTN1
    // Disable analog mode
    ANSELAbits.ANSA5 = 0;
    // Set direction to input
    TRISAbits.TRISA5 = 1;

    // Initialize input for BTN2
    TRISAbits.TRISA4 = 1;
}

void InitBIOSGPIO(void) {
    /* Setup functionality and port direction */
    // LED outputs
    // Disable analog mode
    // Set directions to output
    TRISE = 0;
   
    // Test LEDs
    LATE = 0xff;        
    
    // Turn off LEDs for initialization
    LATE = 0;

    // Button inputs
    ANSELGbits.ANSG7 = 0;
    
    ANSELEbits.ANSE8 = 0;
    ANSELEbits.ANSE8 = 0;
 
    ANSELCbits.ANSC1 = 0;
    
    // Set directions to input
    TRISGbits.TRISG7 = 1;
    TRISDbits.TRISD5 = 1;
    TRISFbits.TRISF1 = 1;
    TRISAbits.TRISA2 = 1; 
    
    TRISEbits.TRISE8 = 1;
    TRISEbits.TRISE9 = 1;
    TRISAbits.TRISA14 = 1;
    TRISCbits.TRISC1 = 1; 
    
}

void InitApp(void) {
    // Initialize peripherals
    InitGPIO();
    InitBIOSGPIO();
    
    OledHostInit();
    OledDspInit();
    OledDvrInit();
    
    // TODO: Add UART4 Initialization call here
    UART4_init();
}

    //char buff0 [5] = "Hello";
    //char buff2 [12] = "Reset - BTN3";
    // buff3 [4] = "BTN4";
    //char buff4 [4] = "BTN3";
    

void Task1(void * pvParameters) 
{
    char buff_1 [15] = "\177";
    char buff_5 [20];
    uint8_t i = 0;
    uint8_t n = 10;
    char buff_2 [15] = "Happy New YEAR";
    while (1) {
        
        if (!BIOS_SW3_PORT_BIT)
    {
           
        sprintf(buff_5, "%d", n=n-1);
        DelayMs(1000);       
        xSemaphoreTake(xMutexOLED, portMAX_DELAY);
        
        if (n == 0)
        {
            OledSetCursor(1,1);
            OledPutString(buff_2);
            
        }
        
        if (n == 0)
        {
            n = 1;
        }
        
        
            for(; i < 16; ++i)
            {
                OledSetCursor(i,0);
                OledPutString(buff_1);
                OledSetCursor(i,3);
                OledPutString(buff_1);
                OledSetCursor(0,1);
                OledPutString(buff_1);
                OledSetCursor(0,2);
                OledPutString(buff_1);
                OledSetCursor(15,1);
                OledPutString(buff_1);
                OledSetCursor(15,2);
                OledPutString(buff_1);
            }
        OledSetCursor(8,2);
        OledPutString(buff_5);
        //DelayMs(10000);
        //n = 10;
        //OledClear(0, 0);
        xSemaphoreGive(xMutexOLED);
        vTaskDelay(1); 
    }
    }
}

void Task2(void * pvParameters) {
    char buff_3 [15] = "\177";
    
    uint8_t j = 0;
    uint8_t i = 0;
    uint8_t clear = 0;
    uint8_t calc = 8;
    while (1) {
        xSemaphoreTake(xMutexOLED, portMAX_DELAY);
        
        if (BIOS_SW4_PORT_BIT)
        {
            calc = 4;
        }
        
        if (BIOS_SW1_PORT_BIT)
        {
            calc = 1.5;
        }
        
        if (BIOS_SW3_PORT_BIT)
        {
            
            if (clear == 0)
            {
                OledClear(0, 0);
                clear = 1;
            }
            
            for (; i < 16; i = i + 2)
            {
                OledSetCursor(i, j);
                OledPutString(buff_3);
                DelayMs(calc*10);
                j = 2;
                OledSetCursor(i, j);
                OledPutString(buff_3);
                DelayMs(calc*10);
                j = 0;
            }
            //if (i > 14)
            //{
                i = 1;
                j = 1;
                for (; i < 16; i = i + 2)
                {
                    OledSetCursor(i, j);
                    OledPutString(buff_3);
                    DelayMs(calc*10);
                    
                    j = 3;
                    OledSetCursor(i, j);
                    OledPutString(buff_3);
                    DelayMs(calc*10);
                    j = 1;
                //}
            }
            DelayMs(300);
            OledClear(0, 0);
            i = 0;
            j = 0;
            calc -= 1;
            if (calc == 0)
            {
                calc = 10;
            }
            
        }
        xSemaphoreGive(xMutexOLED);
        vTaskDelay(1);
    }
}

void DelayMs(int t) {
    volatile long int count = t*33356;
    
    while (count--)
        ;
}