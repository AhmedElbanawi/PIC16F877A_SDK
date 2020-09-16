
_ADC_Init:

;ADC.c,6 :: 		void ADC_Init(const ADC_ClkSrc_t ADC_CLKSRC){
;ADC.c,8 :: 		ADCON0 = (ADC_CLKSRC << 6);
	MOVLW      6
	MOVWF      R1+0
	MOVF       FARG_ADC_Init_ADC_CLKSRC+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ADC_Init5:
	BTFSC      STATUS+0, 2
	GOTO       L__ADC_Init6
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ADC_Init5
L__ADC_Init6:
	MOVF       R0+0, 0
	MOVWF      ADCON0+0
;ADC.c,9 :: 		ADCON1 = (ADC_CLKSRC >> 2) << 6;
	MOVF       FARG_ADC_Init_ADC_CLKSRC+0, 0
	MOVWF      R2+0
	RRF        R2+0, 1
	BCF        R2+0, 7
	RRF        R2+0, 1
	BCF        R2+0, 7
	MOVLW      6
	MOVWF      R1+0
	MOVF       R2+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ADC_Init7:
	BTFSC      STATUS+0, 2
	GOTO       L__ADC_Init8
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ADC_Init7
L__ADC_Init8:
	MOVF       R0+0, 0
	MOVWF      ADCON1+0
;ADC.c,11 :: 		CLEAR_BIT(PIE1, 6);            /* Disable ADC Interrupt */
	BCF        PIE1+0, 6
;ADC.c,12 :: 		CLEAR_BIT(PIR1, 6);            /* Clear ADC Flag */
	BCF        PIR1+0, 6
;ADC.c,13 :: 		SET_BIT(ADCON1, 7);            /* Right justified */
	BSF        ADCON1+0, 7
;ADC.c,14 :: 		}
L_end_ADC_Init:
	RETURN
; end of _ADC_Init

_ADC_SelectAnalogChannels:

;ADC.c,15 :: 		void ADC_SelectAnalogChannels(const ADC_SelectAnalogChannels_t ADC_SELECT){
;ADC.c,16 :: 		ADCON1 &= 0XF0;                  /* Inite Selection of Analog and Digital Channels */
	MOVLW      240
	ANDWF      ADCON1+0, 1
;ADC.c,17 :: 		if(ADC_SELECT > 6){
	MOVF       FARG_ADC_SelectAnalogChannels_ADC_SELECT+0, 0
	SUBLW      6
	BTFSC      STATUS+0, 0
	GOTO       L_ADC_SelectAnalogChannels0
;ADC.c,18 :: 		ADCON1 |= (1 + ADC_SELECT);   /* Select Required Analog and Digital Channels */
	INCF       FARG_ADC_SelectAnalogChannels_ADC_SELECT+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	IORWF      ADCON1+0, 1
;ADC.c,19 :: 		}
	GOTO       L_ADC_SelectAnalogChannels1
L_ADC_SelectAnalogChannels0:
;ADC.c,21 :: 		ADCON1 |= ADC_SELECT;         /* Select Required Analog and Digital Channels */
	MOVF       FARG_ADC_SelectAnalogChannels_ADC_SELECT+0, 0
	IORWF      ADCON1+0, 1
;ADC.c,22 :: 		}
L_ADC_SelectAnalogChannels1:
;ADC.c,23 :: 		TRISE |= 0X07;                   /* Define AN5, AN6, AN7 as Input */
	MOVLW      7
	IORWF      TRISE+0, 1
;ADC.c,24 :: 		TRISA |= 0X2F;                   /* Define AN0, AN1, AN2, AN3, AN4 as Input */
	MOVLW      47
	IORWF      TRISA+0, 1
;ADC.c,25 :: 		}
L_end_ADC_SelectAnalogChannels:
	RETURN
; end of _ADC_SelectAnalogChannels

_ADC_Start:

;ADC.c,26 :: 		void ADC_Start(const ADC_Channel_t ADC_CHANNEL){
;ADC.c,27 :: 		delay_us(30);     /* time delay between two reading as min = 2 TAD */
	MOVLW      9
	MOVWF      R13+0
L_ADC_Start2:
	DECFSZ     R13+0, 1
	GOTO       L_ADC_Start2
	NOP
	NOP
;ADC.c,29 :: 		ADCON0 &= 0XC0;
	MOVLW      192
	ANDWF      ADCON0+0, 1
;ADC.c,30 :: 		ADCON0 |= (ADC_CHANNEL << 3);
	MOVF       FARG_ADC_Start_ADC_CHANNEL+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      ADCON0+0, 1
;ADC.c,33 :: 		ADRESH = 0X00;
	CLRF       ADRESH+0
;ADC.c,34 :: 		ADRESL = 0X00;
	CLRF       ADRESL+0
;ADC.c,36 :: 		SET_BIT(ADCON0, 0);  /* Enable ADC */
	BSF        ADCON0+0, 0
;ADC.c,37 :: 		delay_us(30);        /* Sampling Time */
	MOVLW      9
	MOVWF      R13+0
L_ADC_Start3:
	DECFSZ     R13+0, 1
	GOTO       L_ADC_Start3
	NOP
	NOP
;ADC.c,38 :: 		SET_BIT(ADCON0, 2);  /* ADC Active */
	BSF        ADCON0+0, 2
;ADC.c,39 :: 		}
L_end_ADC_Start:
	RETURN
; end of _ADC_Start

_ADC_Buffer_Read:

;ADC.c,40 :: 		u16_t ADC_Buffer_Read(void){
;ADC.c,41 :: 		return ( ( ( (u16_t)ADRESH ) << 8 ) | ADRESL);   /* Read ADC Buffers */
	MOVF       ADRESH+0, 0
	MOVWF      R3+0
	CLRF       R3+1
	MOVF       R3+0, 0
	MOVWF      R0+1
	CLRF       R0+0
	MOVF       ADRESL+0, 0
	IORWF      R0+0, 1
	MOVLW      0
	IORWF      R0+1, 1
;ADC.c,42 :: 		}
L_end_ADC_Buffer_Read:
	RETURN
; end of _ADC_Buffer_Read

_ADC_Stop:

;ADC.c,43 :: 		void ADC_Stop(void){
;ADC.c,44 :: 		CLEAR_BIT(ADCON0, 0);  /* Disable ADC */
	BCF        ADCON0+0, 0
;ADC.c,45 :: 		}
L_end_ADC_Stop:
	RETURN
; end of _ADC_Stop

_ADC_Interrupt_Enable:

;ADC.c,46 :: 		void ADC_Interrupt_Enable(void){
;ADC.c,47 :: 		SET_BIT(PIE1, 6);      /* Enable ADC Interrupt */
	BSF        PIE1+0, 6
;ADC.c,48 :: 		}
L_end_ADC_Interrupt_Enable:
	RETURN
; end of _ADC_Interrupt_Enable

_ADC_Interrupt_Disable:

;ADC.c,49 :: 		void ADC_Interrupt_Disable(void){
;ADC.c,50 :: 		CLEAR_BIT(PIE1, 6);       /* Disable ADC Interrupt */
	BCF        PIE1+0, 6
;ADC.c,51 :: 		}
L_end_ADC_Interrupt_Disable:
	RETURN
; end of _ADC_Interrupt_Disable

_ADC_Flag_Clear:

;ADC.c,52 :: 		void ADC_Flag_Clear(void){
;ADC.c,53 :: 		CLEAR_BIT(PIR1, 6);       /* Clear ADC Flag */
	BCF        PIR1+0, 6
;ADC.c,54 :: 		}
L_end_ADC_Flag_Clear:
	RETURN
; end of _ADC_Flag_Clear

_ADC_Flag_Read:

;ADC.c,55 :: 		u8_t ADC_Flag_Read(void){
;ADC.c,56 :: 		return GET_BIT(PIR1, 6);  /* Read ADC Flag */
	MOVLW      64
	ANDWF      PIR1+0, 0
	MOVWF      R2+0
	MOVLW      6
	MOVWF      R1+0
	MOVF       R2+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ADC_Flag_Read17:
	BTFSC      STATUS+0, 2
	GOTO       L__ADC_Flag_Read18
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__ADC_Flag_Read17
L__ADC_Flag_Read18:
;ADC.c,57 :: 		}
L_end_ADC_Flag_Read:
	RETURN
; end of _ADC_Flag_Read
