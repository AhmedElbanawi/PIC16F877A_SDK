#line 1 "C:/Users/elmaystero/Desktop/SDK/MCAL/TIMERS/GPT1/GPT1.c"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/timers/gpt1/gpt1.h"
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
#line 14 "c:/users/elmaystero/desktop/sdk/mcal/timers/gpt1/gpt1.h"
typedef enum{
 GPT1_CLK_SRC_INTERNAL = 0,
 GPT1_CLK_SRC_EXTERNAL
}GPT1_CLK_SRC_t;
typedef enum{
 GPT1_PRESCALER_1_TO_1 = 0,
 GPT1_PRESCALER_1_TO_2,
 GPT1_PRESCALER_1_TO_4,
 GPT1_PRESCALER_1_TO_8
}GPT1_Prescaler_t;
typedef enum{
 GPT1_OVERFLOW_NOT_OCCURED = 0,
 GPT1_OVERFLOW_OCCURED
}GPT1_Flag_t;

void GPT1_Interrupt_Enable(void);
void GPT1_Interrupt_Disable(void);
void GPT1_Flag_Clear(void);
GPT1_Flag_t GPT1_Flag_Read(void);
void GPT1_Start(void);
void GPT1_Stop(void);
void GPT1_Init(const GPT1_CLK_SRC_t GPT1_CLK_SRC);
void GPT1_OSC_Enable(void);
void GPT1_OSC_Disable(void);
void GPT1_Buffer_Low_Update(const u8_t GPT1_BUFFER_LOW_UPDATE_VAL);
void GPT1_Buffer_High_Update(const u8_t GPT1_BUFFER_HIGH_UPDATE_VAL);
void GPT1_Prescaler_Update(const GPT1_Prescaler_t GPT1_PRESCALER);
void GPT1_Synchronization_Enable(void);
void GPT1_Synchronization_Disable(void);
#line 6 "C:/Users/elmaystero/Desktop/SDK/MCAL/TIMERS/GPT1/GPT1.c"
void GPT1_Prescaler_Update(const GPT1_Prescaler_t GPT1_PRESCALER){
 switch(GPT1_PRESCALER){
 case GPT1_PRESCALER_1_TO_1:
  ( T1CON &= ~(1 << (4)) ) ;
  ( T1CON &= ~(1 << (5)) ) ;
 break;
 case GPT1_PRESCALER_1_TO_2:
  ( T1CON |= (1 << (4)) ) ;
  ( T1CON &= ~(1 << (5)) ) ;
 break;
 case GPT1_PRESCALER_1_TO_4:
  ( T1CON &= ~(1 << (4)) ) ;
  ( T1CON |= (1 << (5)) ) ;
 break;
 case GPT1_PRESCALER_1_TO_8:
  ( T1CON |= (1 << (4)) ) ;
  ( T1CON |= (1 << (5)) ) ;
 break;
 default:

 break;
 }
}
void GPT1_Buffer_Low_Update(const u8_t GPT1_BUFFER_LOW_UPDATE_VAL){
 TMR1L = GPT1_BUFFER_LOW_UPDATE_VAL;
}
void GPT1_Buffer_High_Update(const u8_t GPT1_BUFFER_HIGH_UPDATE_VAL){
 TMR1H = GPT1_BUFFER_HIGH_UPDATE_VAL;
}
void GPT1_Start(void){
  ( T1CON |= (1 << (0)) ) ;
}
void GPT1_Stop(void){
  ( T1CON &= ~(1 << (0)) ) ;
}
void GPT1_OSC_Enable(void){
  ( T1CON |= (1 << (3)) ) ;
}
void GPT1_OSC_Disable(void){
  ( T1CON &= ~(1 << (3)) ) ;
}
void GPT1_Interrupt_Enable(void){
  ( PIE1 |= (1 << (0)) ) ;
}
void GPT1_Interrupt_Disable(void){
  ( PIE1 &= ~(1 << (0)) ) ;
}
void GPT1_Flag_Clear(void){
  ( PIR1 &= ~(1 << (0)) ) ;
}
GPT1_Flag_t GPT1_Flag_Read(void){
 GPT1_Flag_t GPT1_Flag;
 if(GPT1_OVERFLOW_OCCURED ==  ( ( (PIR1) & ( 1 << (0) ) ) >> (0) ) ){
 GPT1_Flag = GPT1_OVERFLOW_OCCURED;
 }else{
 GPT1_Flag = GPT1_OVERFLOW_NOT_OCCURED;
 }
 return GPT1_Flag;
}
void GPT1_Synchronization_Enable(void){
  ( T1CON &= ~(1 << (2)) ) ;
}
void GPT1_Synchronization_Disable(void){
  ( T1CON |= (1 << (2)) ) ;
}
void GPT1_Init(const GPT1_CLK_SRC_t GPT1_CLK_SRC){
 T1CON = 0X00;
 TMR1H = 0X00;
 TMR1L = 0X00;
 if(GPT1_CLK_SRC_EXTERNAL == GPT1_CLK_SRC){
  ( T1CON |= (1 << (1)) ) ;
 }else{
  ( T1CON &= ~(1 << (1)) ) ;
 }
  ( PIR1 &= ~(1 << (0)) ) ;
  ( PIE1 &= ~(1 << (0)) ) ;
}
