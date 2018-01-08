/* Microchip Technology Inc. and its subsidiaries.  You may use this software 
 * and any derivatives exclusively with Microchip products. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION 
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE 
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF 
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE 
 * TERMS. 
 */

/*******************************************************************************
  This source file has NOT been generated by the MHC
 *******************************************************************************/

/* 
 * File:   
 * Author: Based on main.c by Yuri Panchul 
 * Comments: Modified by Alex Dean
 * Revision history: 
 */

// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"

#include "UART.h"
#include <sys/attribs.h>
#include "user.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// TODO: Define queue handles here 


// *****************************************************************************
// *****************************************************************************
// Section: User Functions
// *****************************************************************************
// *****************************************************************************

void UART4_init (void) {
  
    U4MODEbits.ON   = 0; // Disable UART to allow configuration
    RPF8R = 2; // PPS for U4RX from pin F2
    U4RXR = 11; // PPS for U4TX to pin F8
    
    U4STAbits.URXEN = 1;   // Enable receiver
    U4STAbits.UTXSEL = 1; // Generate interrupt after all characters are sent
    // Don't enable transmitter until ready to send data
    
    // Set baud rate
    U4BRG           = ((100 * 1000000) / (16 * 115200)) - 1;

    // Set up interrupts. Look at Table 7-2 in PIC32MZ EF Family data manual 
    // to find which IPC, IEC and IFS registers to use.   
    IFS5bits.U4RXIF = 0; // Reset interrupt request flag
    IFS5bits.U4TXIF = 0; // Reset interrupt request flag
    IPC42bits.U4RXIP = 1; // Set interrupt priority
    IPC42bits.U4RXIS = 3; // Set interrupt subpriority
    IPC43bits.U4TXIP = 2; // Set interrupt priority
    IPC43bits.U4TXIS = 3; // Set interrupt subpriority
    IEC5bits.U4RXIE = 1; // Enable receive interrupt
    IEC5bits.U4TXIE = 1; // Enable transmit interrupt 

    U4MODEbits.ON   = 1; // Enable UART 
}

// TODO: Declare ISR_UART4_RX here


// TODO: Declare ISR_UART4_TX here


void UART4_putc (char c) {
    U4STAbits.UTXEN = 1;
    while (U4STAbits.UTXBF)
        ;  // wait until transmit buffer not full
    U4TXREG = c;  // transmit character
}

void UART4_puts (char *s) {
    while (*s != '\0')
        UART4_putc (*s++);
}

// TODO: Define UART4_RTOS_qputs here
