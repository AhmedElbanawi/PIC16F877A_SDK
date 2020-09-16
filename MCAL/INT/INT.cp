#line 1 "C:/Users/elmaystero/Desktop/SDK/MCAL/INT/INT.c"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/int/int.h"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/data_types/sys_data_types.h"







typedef unsigned short u8_t;
typedef unsigned int u16_t;
typedef unsigned long int u32_t;
typedef u8_t Word_Size_t;
typedef volatile Word_Size_t* const memoryaddress_t;

typedef signed short s8_t;
typedef signed int s16_t;
typedef signed long int s32_t;
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/bit_manipulation/bit_manipulation.h"
#line 14 "c:/users/elmaystero/desktop/sdk/mcal/int/int.h"
void INT_Global_Enable(void);
void INT_Global_Disable(void);
void INT_Global_Init(void);
#line 6 "C:/Users/elmaystero/Desktop/SDK/MCAL/INT/INT.c"
void INT_Global_Init(void){
  ( INTCON &= ~(1 << (7)) ) ;
  ( INTCON |= (1 << (6)) ) ;
}
void INT_Global_Disable(void){
  ( INTCON &= ~(1 << (7)) ) ;
}
void INT_Global_Enable(void){
  ( INTCON |= (1 << (7)) ) ;
}
