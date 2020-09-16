#line 1 "C:/Users/elmaystero/Desktop/SDK/MCAL/ADC/ADC.c"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/adc/adc.h"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/bit_manipulation/bit_manipulation.h"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/data_types/sys_data_types.h"







typedef unsigned short u8_t;
typedef unsigned int u16_t;
typedef unsigned long int u32_t;
typedef u8_t Word_Size_t;
typedef volatile Word_Size_t* const memoryaddress_t;

typedef signed short s8_t;
typedef signed int s16_t;
typedef signed long int s32_t;
#line 14 "c:/users/elmaystero/desktop/sdk/mcal/adc/adc.h"
typedef enum{

 ADC_SELECT0 = 0,
 ADC_SELECT1,
 ADC_SELECT2,
 ADC_SELECT3,
 ADC_SELECT4,
 ADC_SELECT5,
 ADC_SELECT6,
 ADC_SELECT7,
 ADC_SELECT8,
 ADC_SELECT9,
 ADC_SELECT10,
 ADC_SELECT11,
 ADC_SELECT12,
 ADC_SELECT13,
 ADC_SELECT14
}ADC_SelectAnalogChannels_t;
typedef enum{
 ADC_CH0 = 0,
 ADC_CH1,
 ADC_CH2,
 ADC_CH3,
 ADC_CH4,
 ADC_CH5,
 ADC_CH6,
 ADC_CH7
}ADC_Channel_t;
typedef enum{
 ADC_CLKSRC_2TOSC = 0,
 ADC_CLKSRC_4TOSC = 4,
 ADC_CLKSRC_8TOSC = 1,
 ADC_CLKSRC_16TOSC = 5,
 ADC_CLKSRC_32TOSC = 2,
 ADC_CLKSRC_64TOSC = 6
}ADC_ClkSrc_t;
void ADC_Init(const ADC_ClkSrc_t ADC_CLKSRC);
void ADC_SelectAnalogChannels(const ADC_SelectAnalogChannels_t ADC_SELECT);
void ADC_Start(const ADC_Channel_t ADC_CHANNEL);
void ADC_Stop(void);
u16_t ADC_Buffer_Read(void);
void ADC_Interrupt_Enable(void);
void ADC_Interrupt_Disable(void);
void ADC_Flag_Clear(void);
u8_t ADC_Flag_Read(void);
#line 6 "C:/Users/elmaystero/Desktop/SDK/MCAL/ADC/ADC.c"
void ADC_Init(const ADC_ClkSrc_t ADC_CLKSRC){

 ADCON0 = (ADC_CLKSRC << 6);
 ADCON1 = (ADC_CLKSRC >> 2) << 6;

  ( PIE1 &= ~(1 << (6)) ) ;
  ( PIR1 &= ~(1 << (6)) ) ;
  ( ADCON1 |= (1 << (7)) ) ;
}
void ADC_SelectAnalogChannels(const ADC_SelectAnalogChannels_t ADC_SELECT){
 ADCON1 &= 0XF0;
 if(ADC_SELECT > 6){
 ADCON1 |= (1 + ADC_SELECT);
 }
 else{
 ADCON1 |= ADC_SELECT;
 }
 TRISE |= 0X07;
 TRISA |= 0X2F;
}
void ADC_Start(const ADC_Channel_t ADC_CHANNEL){
 delay_us(30);

 ADCON0 &= 0XC0;
 ADCON0 |= (ADC_CHANNEL << 3);


 ADRESH = 0X00;
 ADRESL = 0X00;

  ( ADCON0 |= (1 << (0)) ) ;
 delay_us(30);
  ( ADCON0 |= (1 << (2)) ) ;
}
u16_t ADC_Buffer_Read(void){
 return ( ( ( (u16_t)ADRESH ) << 8 ) | ADRESL);
}
void ADC_Stop(void){
  ( ADCON0 &= ~(1 << (0)) ) ;
}
void ADC_Interrupt_Enable(void){
  ( PIE1 |= (1 << (6)) ) ;
}
void ADC_Interrupt_Disable(void){
  ( PIE1 &= ~(1 << (6)) ) ;
}
void ADC_Flag_Clear(void){
  ( PIR1 &= ~(1 << (6)) ) ;
}
u8_t ADC_Flag_Read(void){
 return  ( ( (PIR1) & ( 1 << (6) ) ) >> (6) ) ;
}
