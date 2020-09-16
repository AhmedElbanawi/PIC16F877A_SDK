#line 1 "C:/Users/elmaystero/Desktop/SDK/MCAL/WDT/WDT.c"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/wdt/wdt.h"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/bit_manipulation/bit_manipulation.h"
#line 10 "c:/users/elmaystero/desktop/sdk/mcal/wdt/wdt.h"
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
#line 6 "C:/Users/elmaystero/Desktop/SDK/MCAL/WDT/WDT.c"
void WDT_Update(const WDT_Period_t WDT_PERIOD){
  ( OPTION_REG |= (1 << (3)) ) ;
 OPTION_REG &= 0XF8;
 OPTION_REG |= WDT_PERIOD;
}
