/******************************************************************************/
/*  Files to Include                                                          */
/******************************************************************************/
#ifdef __XC32
    #include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif
#include <stdint.h>         /* For uint32_t definition                        */
#include "user.h"           /* User funct/params, such as InitApp             */

uint16_t counter;

int main(void)
{
    init_gpio();            /* GPIOs Initialization */
    init_piezo_buzzer();    /* PWM initialization*/
    initWiFIREadc();
    init_interrupt();
    while (1) {
        scan();
    }  
}
