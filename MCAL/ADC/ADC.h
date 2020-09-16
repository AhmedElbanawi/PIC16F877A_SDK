/******************************************************************************/
#ifndef ADC_H
#define ADC_H
#endif
/******************************************************************************/
#ifndef BIT_MANIPULATION_H
#include "Bit_Manipulation.h"
#endif
/******************************************************************************/
#ifndef SYS_DATA_TYPES_H
#include "Sys_Data_Types.h"
#endif
/******************************************************************************/
typedef enum{
                           /* AN7    AN6     AN5     AN4     AN3      AN2        AN1    AN0    VREF+   VREF-  */
        ADC_SELECT0 = 0,   /* A       A       A       A       A          A        A      A      VDD     VSS   */
        ADC_SELECT1,       /* A       A       A       A      VREF+       A        A      A      AN3     VSS   */
        ADC_SELECT2,       /* D       D       D       A       A          A        A      A      VDD     VSS   */
        ADC_SELECT3,       /* D       D       D       A       VREF+      A        A      A      AN3     VSS   */
        ADC_SELECT4,       /* D       D       D       D       A          D        A      A      VDD     VSS   */
        ADC_SELECT5,      /*  D       D       D       D       VREF+      D        A      A      AN3     VSS   */
        ADC_SELECT6,      /*  D       D       D       D       D          D        D      D      —       —     */
        ADC_SELECT7,       /* A       A       A       A        VREF+   VREF-      A      A       AN3    AN2   */
        ADC_SELECT8,       /* D       D       A       A        A         A        A      A       VDD    VSS   */
        ADC_SELECT9,       /* D       D       A       A        VREF+    A         A      A       AN3    VSS   */
        ADC_SELECT10,      /* D       D       A       A        VREF+    VREF-     A      A       AN3    AN2   */
        ADC_SELECT11,      /* D       D       D       A        VREF+    VREF-     A      A       AN3    AN2   */
        ADC_SELECT12,     /*  D       D       D       D        VREF+    VREF-     A      A       AN3    AN2   */
        ADC_SELECT13,     /*  D       D       D       D        D         D        D      A       VDD    VSS   */
        ADC_SELECT14       /* D       D       D       D        VREF+     VREF-    D      A       AN3    AN2   */
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
        ADC_CLKSRC_2TOSC =  0,       /* FOSC <= 1.25 MHZ */
        ADC_CLKSRC_4TOSC =  4,       /* FOSC <= 2.5  MHZ */
        ADC_CLKSRC_8TOSC =  1,       /* FOSC <= 5    MHZ */
        ADC_CLKSRC_16TOSC = 5,       /* FOSC <= 10   MHZ */
        ADC_CLKSRC_32TOSC = 2,       /* FOSC <= 20   MHZ */
        ADC_CLKSRC_64TOSC = 6        /* FOSC <= 20   MHZ */
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