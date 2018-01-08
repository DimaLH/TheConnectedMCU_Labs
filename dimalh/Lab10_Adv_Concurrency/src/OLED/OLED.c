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
 * Author: 
 * Comments:
 * Revision history: 
 */

// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************
#ifdef __XC32
    #include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include "OLED.h"
#include "user.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************


/* ------------------------------------------------------------ */
/*				Local Symbol Definitions						*/
/* ------------------------------------------------------------ */

#define	cmdOledDisplayOn	0xAF
#define	cmdOledDisplayOff	0xAE
#define	cmdOledSegRemap		0xA1	//map column 127 to SEG0
#define	cmdOledComDir		0xC8	//scan from COM[N-1] to COM0
#define	cmdOledComConfig	0xDA	//set COM hardware configuration

/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

extern BYTE		rgbOledFont0[];
extern BYTE		rgbOledFontUser[];
extern BYTE		rgbFillPat[];

extern int		xchOledMax;
extern int		ychOledMax;

/* Coordinates of current pixel location on the display. The origin
** is at the upper left of the display. X increases to the right
** and y increases going down.
*/
int		xcoOledCur;
int		ycoOledCur;

BYTE *	pbOledCur;			//address of byte corresponding to current location
int		bnOledCur;			//bit number of bit corresponding to current location
BYTE	clrOledCur;			//drawing color to use
BYTE *	pbOledPatCur;		//current fill pattern
int		fOledCharUpdate;

int		dxcoOledFontCur;
int		dycoOledFontCur;

BYTE *	pbOledFontCur;
BYTE *	pbOledFontUser;


// TODO: Define mutex handle here
SemaphoreHandle_t xMutexOLED;
// *****************************************************************************
// *****************************************************************************
// Section: User Functions
// *****************************************************************************
// *****************************************************************************

// Comment a function definition and leverage automatic documentation 
/**
  <p><b>Function:</b></p>

  <p><b>Summary:</b></p>

  <p><b>Description:</b></p>

  <p><b>Remarks:</b></p>
 */
// TODO Insert function definitions (right here) to leverage live documentation

/* ------------------------------------------------------------ */
/*** OledHostInit
**
** Parameters:
** none
**
** Return Value:
** none
**
** Errors:
** none
**
** Description:
** Perform PIC32 device initialization to prepare for use
** of the OLED display.
** This example is hard coded for the chipKIT Uno32 and
** SPI2.
*/
void OledHostInit()
{
    unsigned int tcfg;
    /* Initialize SPI port 2.
    */
    SPI2CON = 0;
    SPI2BRG = 15; //8Mhz, with 80Mhz PB clock
    SPI2STATbits.SPIROV = 0;
    SPI2CONbits.CKP = 1;
    SPI2CONbits.MSTEN = 1;
    SPI2CONbits.ON = 1;

    // Init value = 1 for these three bits
    LATDSET = bitVddCtrl|bitVbatCtrl; // power off initially
    LATDSET = bitDataCmd;

    // Set pins as outputs by clearing TRIS
    TRISDCLR = bitVddCtrl|bitVbatCtrl;       
    TRISDCLR = bitDataCmd;       
  
    // SPI output
    TRISDCLR = 1<<11;
    /* Make the RG9 pin be an output. On the Basic I/O Shield, this pin
    ** is tied to reset.
    */
    // initialize reset pin to be a 1
    LATGSET = bitReset;
    
    // Make reset pin an output, clearing TRISG, disabling analog
    TRISGCLR = bitReset;
    ANSELGCLR = bitReset;
    
    // PPR: Connect SDO2 to RPD11
    RPD11R = 6; 
}

/* ------------------------------------------------------------ */
/*** OledDspInit
**
** Parameters:
** none
**
** Return Value:
** none
**
** Errors:
** none
**
** Description:
** Initialize the OLED display controller and turn the display on.
*/
void
OledDspInit()
{
    /* We're going to be sending commands, so clear the Data/Cmd bit
    */
    LATDCLR = bitDataCmd;
    /* Start by turning VDD on and wait a while for the power to come up.
    */
    LATDCLR = bitVddCtrl;    
    DelayMs(1);
    /* Display off command
    */
    Spi2PutByte(0xAE);
    /* Bring Reset low and then high
    */
    PORTGCLR = bitReset;
    DelayMs(1);
    PORTGSET = bitReset;
    /* Send the Set Charge Pump and Set Pre-Charge Period commands
    */
    Spi2PutByte(0x8D);
    Spi2PutByte(0x14);
    Spi2PutByte(0xD9);
    Spi2PutByte(0xF1);
    /* Turn on VCC and wait 100ms
    */
    LATDCLR = bitVbatCtrl;
    DelayMs(100);
    /* Send the commands to invert the display. This puts the display origin
    ** in the upper left corner.
     * 
     */
    Spi2PutByte(0xA1); //remap columns
    Spi2PutByte(0xC8); //remap the rows
    /* Send the commands to select sequential COM configuration. This makes the
    ** display memory non-interleaved.
    */
    Spi2PutByte(0xDA); //set COM configuration command
    Spi2PutByte(0x20); //sequential COM, left/right remap enabled
    /* Send Display On command
    */
    Spi2PutByte(0xAF);
}


/* ------------------------------------------------------------ */
/***	OledDvrInit
**
**	Parameters:
**		none
**
**	Return Value:
**		none
**
**	Errors:
**		none
**
**	Description:
**		Initialize the OLED software system
*/

void
OledDvrInit()
	{
	int		ib;

	/* Init the parameters for the default font
	*/
	dxcoOledFontCur = cbOledChar;
	dycoOledFontCur = 8;
	pbOledFontCur = rgbOledFont0;
	pbOledFontUser = rgbOledFontUser;

	for (ib = 0; ib < cbOledFontUser; ib++) {
		rgbOledFontUser[ib] = 0;
	}

	xchOledMax = ccolOledMax / dxcoOledFontCur;
	ychOledMax = crowOledMax / dycoOledFontCur;

	/* Set the default character cursor position.
	*/
	OledSetCursor(0, 0);

	/* Set the default foreground draw color and fill pattern
	*/
	clrOledCur = 0x01;
	pbOledPatCur = rgbFillPat;
	OledSetDrawMode(modOledSet);

	/* Default the character routines to automaticall
	** update the display.
	*/
	fOledCharUpdate = 1;

}

/* ------------------------------------------------------------ */
/*** OledUpdate
**
** Parameters:
** none
**
** Return Value:
** none
**
** Errors:
** none
**
** Description:
** Update the OLED display with the contents of the memory buffer
*/
void
OledUpdate()
{
    int ipag;
    int icol;
    BYTE * pb;
    pb = rgbOledBmp;
    for (ipag = 0; ipag < cpagOledMax; ipag++) {
        LATDCLR = bitDataCmd;
        // PORTClearBits(prtDataCmd, bitDataCmd);
        /* Set the page address
        */
        Spi2PutByte(0x22); //Set page command
        Spi2PutByte(ipag); //page number
        /* Start at the left column
        */
        Spi2PutByte(0x00); //set low nybble of column
        Spi2PutByte(0x10); //set high nybble of column
        LATDSET = bitDataCmd;
        // PORTSetBits(prtDataCmd, bitDataCmd);
        /* Copy this memory page of display data.
        */
        OledPutBuffer(ccolOledMax, pb);
        pb += ccolOledMax;
    }
}

/* ------------------------------------------------------------ */
/***	OledHostTerm
**
**	Parameters:
**		none
**
**	Return Value:
**		none
**
**	Errors:
**		none
**
**	Description:
**		Release processor resources used by the library
*/

void
OledHostTerm()
	{

	/* Make the Data/Command select, Reset, and SPI CS pins be inputs.
	*/
// TODO	PORTSetBits(prtDataCmd, bitDataCmd);
// TODO	PORTSetPinsDigitalIn(prtDataCmd, bitDataCmd);		//Data/Command# select
// TODO	PORTSetBits(prtReset, bitReset);
// TODO	PORTSetPinsDigitalIn(prtReset, bitReset);

	/* Make power control pins be inputs. The pullup resistors on the
	** board will ensure that the power supplies stay off.
	*/
// TODO	PORTSetBits(prtVddCtrl, bitVddCtrl);
// TODO	PORTSetBits(prtVbatCtrl, bitVbatCtrl);
// TODO	PORTSetPinsDigitalIn(prtVddCtrl, bitVddCtrl);		//VDD power control (1=off)
// TODO	PORTSetPinsDigitalIn(prtVbatCtrl, bitVbatCtrl);	//VBAT power control (1=off)

	/* Turn SPI port 2 off.
	*/
	#if defined (_BOARD_UNO_)
		SPI2CON = 0;
	#elif defined (_BOARD_MEGA_)
		PORTSetBits(prtSck, bitSck);
		PORTSetBits(prtMosi, bitMosi);
		PORTSetPinsDigitalIn(prtSck, bitSck);
		PORTSetPinsDigitalIn(prtMosi, bitMosi);
	#endif
}

/* ------------------------------------------------------------ */
/***	OledDevTerm
**
**	Parameters:
**		none
**
**	Return Value:
**		none
**
**	Errors:
**		none
**
**	Description:
**		Shut down the OLED display hardware
*/

void
OledDevTerm()
	{

	/* Send the Display Off command.
	*/
	Spi2PutByte(cmdOledDisplayOff);

	/* Turn off VCC
	*/
// TODO	PORTSetBits(prtVbatCtrl, bitVbatCtrl);
// TODO		delay(100);

	/* Turn off VDD
	*/
// TODO	PORTClearBits(prtVddCtrl, bitVddCtrl);

}

void OledClear(void){
  
    OledMoveTo(0,0);
    OledSetFillPattern(OledGetStdPattern(0));
    OledFillRect(127,31);
    OledUpdate();  
}
