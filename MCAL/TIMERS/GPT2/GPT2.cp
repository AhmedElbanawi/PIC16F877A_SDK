#line 1 "C:/Users/elmaystero/Desktop/SDK/MCAL/TIMERS/GPT2/GPT2.c"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/timers/gpt2/gpt2.h"
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
#line 14 "c:/users/elmaystero/desktop/sdk/mcal/timers/gpt2/gpt2.h"
typedef enum{
 GPT2_PRESCALER_1_TO_1 = 0,
 GPT2_PRESCALER_1_TO_4,
 GPT2_PRESCALER_1_TO_16
}GPT2_Prescaler_t;
typedef enum{
 GPT2_POSTSCALER_1_TO_1 = 0,
 GPT2_POSTSCALER_1_TO_2,
 GPT2_POSTSCALER_1_TO_3,
 GPT2_POSTSCALER_1_TO_4,
 GPT2_POSTSCALER_1_TO_5,
 GPT2_POSTSCALER_1_TO_6,
 GPT2_POSTSCALER_1_TO_7,
 GPT2_POSTSCALER_1_TO_8,
 GPT2_POSTSCALER_1_TO_9,
 GPT2_POSTSCALER_1_TO_10,
 GPT2_POSTSCALER_1_TO_11,
 GPT2_POSTSCALER_1_TO_12,
 GPT2_POSTSCALER_1_TO_13,
 GPT2_POSTSCALER_1_TO_14,
 GPT2_POSTSCALER_1_TO_15,
 GPT2_POSTSCALER_1_TO_16
}GPT2_Postscaler_t;
typedef enum{
 GPT2_OVERFLOW_NOT_OCCURED = 0,
 GPT2_OVERFLOW_OCCURED
}GPT2_Flag_t;

void GPT2_Start(void);
void GPT2_Stop(void);
void GPT2_Init(void);
void GPT2_Interrupt_Enable(void);
void GPT2_Interrupt_Disable(void);
void GPT2_Update_us(const u8_t GPT2_UPDATE_VAL);
GPT2_Flag_t GPT2_Flag_Read(void);
void GPT2_Flag_Clear(void);
void GPT2_Scaler_Update(const GPT2_Prescaler_t GPT2_PRESCALER,
 const GPT2_Postscaler_t GPT2_POSTSCALER);
#line 6 "C:/Users/elmaystero/Desktop/SDK/MCAL/TIMERS/GPT2/GPT2.c"
void GPT2_Start(void){
  ( T2CON |= (1 << (2)) ) ;
}

void GPT2_Stop(void){
  ( T2CON &= ~(1 << (2)) ) ;
}

void GPT2_Scaler_Update(const GPT2_Prescaler_t GPT2_PRESCALER,
 const GPT2_Postscaler_t GPT2_POSTSCALER){

 switch(GPT2_PRESCALER){
 case GPT2_PRESCALER_1_TO_1:
 T2CON = GPT2_PRESCALER;
 break;
 case GPT2_PRESCALER_1_TO_4:
 T2CON = GPT2_PRESCALER;
 break;
 case GPT2_PRESCALER_1_TO_16:
 T2CON = GPT2_PRESCALER;
 break;
 default:

 break;
 }
 switch(GPT2_POSTSCALER){
 case GPT2_POSTSCALER_1_TO_1:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_2:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_3:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_4:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_5:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_6:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_7:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_8:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_9:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_10:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_11:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_12:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_13:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_14:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_15:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 case GPT2_POSTSCALER_1_TO_16:
 T2CON |= (GPT2_POSTSCALER << 3);
 break;
 default:

 break;

 }
}

void GPT2_Update_us(const u8_t GPT2_UPDATE_VAL){
 PR2 = GPT2_UPDATE_VAL;
}

void GPT2_Init(void){
 T2CON = 0X00;
 PR2 = 0XFF;
 TMR2 = 0X00;
  ( PIR1 &= ~(1 << (1)) ) ;
  ( PIE1 &= ~(1 << (1)) ) ;
}

void GPT2_Flag_Clear(void){
  ( PIR1 &= ~(1 << (1)) ) ;
}

GPT2_Flag_t GPT2_Flag_Read(void){
 GPT2_Flag_t GPT2_Flag;
 if(GPT2_OVERFLOW_OCCURED ==  ( ( (PIR1) & ( 1 << (1) ) ) >> (1) ) ){
 GPT2_Flag = GPT2_OVERFLOW_OCCURED;
 }else{
 GPT2_Flag = GPT2_OVERFLOW_NOT_OCCURED;
 }
 return GPT2_Flag;
}

void GPT2_Interrupt_Disable(void){
  ( PIE1 &= ~(1 << (1)) ) ;
}

void GPT2_Interrupt_Enable(void){
  ( PIE1 |= (1 << (1)) ) ;
}
