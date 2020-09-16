/******************************************************************************/
#ifndef WDT_H
#include "WDT.h"
#endif
/******************************************************************************/
void WDT_Update(const WDT_Period_t WDT_PERIOD){
     SET_BIT(OPTION_REG, 3);                /* Assign Prescaler To WDT */
     OPTION_REG &= 0XF8;                    /* Inite WDT Prescaler */
     OPTION_REG |= WDT_PERIOD;             /* Assign The Reguired Prescaler */
}