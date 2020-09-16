/******************************************************************************/
#ifndef WDT_H
#define WDT_H
#endif
/******************************************************************************/
#ifndef BIT_MANIPULATION_H
#include "Bit_Manipulation.h"
#endif
/******************************************************************************/
typedef enum{
        WDT_PERIOD_18_MS = 0,
        WDT_PERIOD_36_MS,
        WDT_PERIOD_72_MS,
        WDT_PERIOD_144_MS,
        WDT_PERIOD_288_MS,
        WDT_PERIOD_576_MS,
        WDT_PERIOD_1152_MS,
        WDT_PERIOD_2304_MS
}WDT_Period_t;
void WDT_Update(const WDT_Period_t WDT_PERIOD);