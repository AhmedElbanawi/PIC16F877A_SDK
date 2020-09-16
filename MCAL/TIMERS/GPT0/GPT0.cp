#line 1 "C:/Users/elmaystero/Desktop/SDK/MCAL/TIMERS/GPT0/GPT0.c"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/timers/gpt0/gpt0.h"
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
#line 14 "c:/users/elmaystero/desktop/sdk/mcal/timers/gpt0/gpt0.h"
typedef enum{
 GPT0_CLK_SRC_INTERNAL = 0,
 GPT0_CLK_SRC_EXTERNAL
}GPT0_CLK_SRC_t;
typedef enum{
 GPT0_PRESCALER_1_TO_2 = 0,
 GPT0_PRESCALER_1_TO_4,
 GPT0_PRESCALER_1_TO_8,
 GPT0_PRESCALER_1_TO_16,
 GPT0_PRESCALER_1_TO_32,
 GPT0_PRESCALER_1_TO_64,
 GPT0_PRESCALER_1_TO_128,
 GPT0_PRESCALER_1_TO_256
}GPT0_Prescaler_t;
typedef enum{
 GPT0_OVERFLOW_NOT_OCCURED = 0,
 GPT0_OVERFLOW_OCCURED
}GPT0_Flag_t;

void GPT0_Interrupt_Enable(void);
void GPT0_Interrupt_Disable(void);
void GPT0_Flag_Clear(void);
GPT0_Flag_t GPT0_Flag_Read(void);
void GPT0_Start(void);
void GPT0_Stop(void);
void GPT0_Init(const GPT0_CLK_SRC_t GPT0_CLK_SRC);
void GPT0_Buffer_Update(const u8_t GPT0_BUFFER_UPDATE_VAL);
void GPT0_Prescaler_Update(const GPT0_Prescaler_t GPT0_PRESCALER);
void GPT0_Count_Rising_Edge(void);
void GPT0_Count_Falling_Edge(void);
#line 6 "C:/Users/elmaystero/Desktop/SDK/MCAL/TIMERS/GPT0/GPT0.c"
void GPT0_Init(const GPT0_CLK_SRC_t GPT0_CLK_SRC){
 OPTION_REG = 0XFF;
 TMR0 = 0X00;
 if(GPT0_CLK_SRC_EXTERNAL == GPT0_CLK_SRC){
  ( OPTION_REG |= (1 << (5)) ) ;
 }else{
  ( OPTION_REG &= ~(1 << (5)) ) ;
 }
  ( INTCON &= ~(1 << (2)) ) ;
  ( INTCON &= ~(1 << (5)) ) ;
}
void GPT0_Interrupt_Disable(void){
  ( INTCON &= ~(1 << (5)) ) ;
}
void GPT0_Interrupt_Enable(void){
  ( INTCON |= (1 << (5)) ) ;
}
void GPT0_Flag_Clear(void){
  ( INTCON &= ~(1 << (2)) ) ;
}
GPT0_Flag_t GPT0_Flag_Read(void){
 GPT0_Flag_t GPT0_Flag;
 if(GPT0_OVERFLOW_OCCURED ==  ( ( (INTCON) & ( 1 << (2) ) ) >> (2) ) ){
 GPT0_Flag = GPT0_OVERFLOW_OCCURED;
 }else{
 GPT0_Flag = GPT0_OVERFLOW_NOT_OCCURED;
 }
 return GPT0_Flag;
}
void GPT0_Start(void){
  ( OPTION_REG &= ~(1 << (3)) ) ;
}
void GPT0_Stop(void){
  ( OPTION_REG |= (1 << (3)) ) ;
}
void GPT0_Count_Rising_Edge(void){
  ( OPTION_REG &= ~(1 << (4)) ) ;
}
void GPT0_Count_Falling_Edge(void){
  ( OPTION_REG |= (1 << (4)) ) ;
}
void GPT0_Prescaler_Update(const GPT0_Prescaler_t GPT0_PRESCALER){
 OPTION_REG &= 0XF8;
 switch(GPT0_PRESCALER){
 case GPT0_PRESCALER_1_TO_2:
 OPTION_REG |= GPT0_PRESCALER;
 break;
 case GPT0_PRESCALER_1_TO_4:
 OPTION_REG |= GPT0_PRESCALER;
 break;
 case GPT0_PRESCALER_1_TO_8:
 OPTION_REG |= GPT0_PRESCALER;
 break;
 case GPT0_PRESCALER_1_TO_16:
 OPTION_REG |= GPT0_PRESCALER;
 break;
 case GPT0_PRESCALER_1_TO_32:
 OPTION_REG |= GPT0_PRESCALER;
 break;
 case GPT0_PRESCALER_1_TO_64:
 OPTION_REG |= GPT0_PRESCALER;
 break;
 case GPT0_PRESCALER_1_TO_128:
 OPTION_REG |= GPT0_PRESCALER;
 break;
 case GPT0_PRESCALER_1_TO_256:
 OPTION_REG |= GPT0_PRESCALER;
 break;
 default:

 break;
 }
}
void GPT0_Buffer_Update(const u8_t GPT0_BUFFER_UPDATE_VAL){
 TMR0 = GPT0_BUFFER_UPDATE_VAL;
}
