
_GPT1_Prescaler_Update:

;GPT1.c,6 :: 		void GPT1_Prescaler_Update(const GPT1_Prescaler_t GPT1_PRESCALER){
;GPT1.c,7 :: 		switch(GPT1_PRESCALER){
	GOTO       L_GPT1_Prescaler_Update0
;GPT1.c,8 :: 		case GPT1_PRESCALER_1_TO_1:
L_GPT1_Prescaler_Update2:
;GPT1.c,9 :: 		CLEAR_BIT(T1CON, 4);
	BCF        T1CON+0, 4
;GPT1.c,10 :: 		CLEAR_BIT(T1CON, 5);
	BCF        T1CON+0, 5
;GPT1.c,11 :: 		break;
	GOTO       L_GPT1_Prescaler_Update1
;GPT1.c,12 :: 		case GPT1_PRESCALER_1_TO_2:
L_GPT1_Prescaler_Update3:
;GPT1.c,13 :: 		SET_BIT(T1CON, 4);
	BSF        T1CON+0, 4
;GPT1.c,14 :: 		CLEAR_BIT(T1CON, 5);
	BCF        T1CON+0, 5
;GPT1.c,15 :: 		break;
	GOTO       L_GPT1_Prescaler_Update1
;GPT1.c,16 :: 		case GPT1_PRESCALER_1_TO_4:
L_GPT1_Prescaler_Update4:
;GPT1.c,17 :: 		CLEAR_BIT(T1CON, 4);
	BCF        T1CON+0, 4
;GPT1.c,18 :: 		SET_BIT(T1CON, 5);
	BSF        T1CON+0, 5
;GPT1.c,19 :: 		break;
	GOTO       L_GPT1_Prescaler_Update1
;GPT1.c,20 :: 		case GPT1_PRESCALER_1_TO_8:
L_GPT1_Prescaler_Update5:
;GPT1.c,21 :: 		SET_BIT(T1CON, 4);
	BSF        T1CON+0, 4
;GPT1.c,22 :: 		SET_BIT(T1CON, 5);
	BSF        T1CON+0, 5
;GPT1.c,23 :: 		break;
	GOTO       L_GPT1_Prescaler_Update1
;GPT1.c,24 :: 		default:
L_GPT1_Prescaler_Update6:
;GPT1.c,26 :: 		break;
	GOTO       L_GPT1_Prescaler_Update1
;GPT1.c,27 :: 		}
L_GPT1_Prescaler_Update0:
	MOVF       FARG_GPT1_Prescaler_Update_GPT1_PRESCALER+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPT1_Prescaler_Update2
	MOVF       FARG_GPT1_Prescaler_Update_GPT1_PRESCALER+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPT1_Prescaler_Update3
	MOVF       FARG_GPT1_Prescaler_Update_GPT1_PRESCALER+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPT1_Prescaler_Update4
	MOVF       FARG_GPT1_Prescaler_Update_GPT1_PRESCALER+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPT1_Prescaler_Update5
	GOTO       L_GPT1_Prescaler_Update6
L_GPT1_Prescaler_Update1:
;GPT1.c,28 :: 		}
L_end_GPT1_Prescaler_Update:
	RETURN
; end of _GPT1_Prescaler_Update

_GPT1_Buffer_Low_Update:

;GPT1.c,29 :: 		void GPT1_Buffer_Low_Update(const u8_t GPT1_BUFFER_LOW_UPDATE_VAL){
;GPT1.c,30 :: 		TMR1L = GPT1_BUFFER_LOW_UPDATE_VAL;
	MOVF       FARG_GPT1_Buffer_Low_Update_GPT1_BUFFER_LOW_UPDATE_VAL+0, 0
	MOVWF      TMR1L+0
;GPT1.c,31 :: 		}
L_end_GPT1_Buffer_Low_Update:
	RETURN
; end of _GPT1_Buffer_Low_Update

_GPT1_Buffer_High_Update:

;GPT1.c,32 :: 		void GPT1_Buffer_High_Update(const u8_t GPT1_BUFFER_HIGH_UPDATE_VAL){
;GPT1.c,33 :: 		TMR1H = GPT1_BUFFER_HIGH_UPDATE_VAL;
	MOVF       FARG_GPT1_Buffer_High_Update_GPT1_BUFFER_HIGH_UPDATE_VAL+0, 0
	MOVWF      TMR1H+0
;GPT1.c,34 :: 		}
L_end_GPT1_Buffer_High_Update:
	RETURN
; end of _GPT1_Buffer_High_Update

_GPT1_Start:

;GPT1.c,35 :: 		void GPT1_Start(void){
;GPT1.c,36 :: 		SET_BIT(T1CON, 0);
	BSF        T1CON+0, 0
;GPT1.c,37 :: 		}
L_end_GPT1_Start:
	RETURN
; end of _GPT1_Start

_GPT1_Stop:

;GPT1.c,38 :: 		void GPT1_Stop(void){
;GPT1.c,39 :: 		CLEAR_BIT(T1CON, 0);
	BCF        T1CON+0, 0
;GPT1.c,40 :: 		}
L_end_GPT1_Stop:
	RETURN
; end of _GPT1_Stop

_GPT1_OSC_Enable:

;GPT1.c,41 :: 		void GPT1_OSC_Enable(void){
;GPT1.c,42 :: 		SET_BIT(T1CON, 3);
	BSF        T1CON+0, 3
;GPT1.c,43 :: 		}
L_end_GPT1_OSC_Enable:
	RETURN
; end of _GPT1_OSC_Enable

_GPT1_OSC_Disable:

;GPT1.c,44 :: 		void GPT1_OSC_Disable(void){
;GPT1.c,45 :: 		CLEAR_BIT(T1CON, 3);
	BCF        T1CON+0, 3
;GPT1.c,46 :: 		}
L_end_GPT1_OSC_Disable:
	RETURN
; end of _GPT1_OSC_Disable

_GPT1_Interrupt_Enable:

;GPT1.c,47 :: 		void GPT1_Interrupt_Enable(void){
;GPT1.c,48 :: 		SET_BIT(PIE1, 0);
	BSF        PIE1+0, 0
;GPT1.c,49 :: 		}
L_end_GPT1_Interrupt_Enable:
	RETURN
; end of _GPT1_Interrupt_Enable

_GPT1_Interrupt_Disable:

;GPT1.c,50 :: 		void GPT1_Interrupt_Disable(void){
;GPT1.c,51 :: 		CLEAR_BIT(PIE1, 0);
	BCF        PIE1+0, 0
;GPT1.c,52 :: 		}
L_end_GPT1_Interrupt_Disable:
	RETURN
; end of _GPT1_Interrupt_Disable

_GPT1_Flag_Clear:

;GPT1.c,53 :: 		void GPT1_Flag_Clear(void){
;GPT1.c,54 :: 		CLEAR_BIT(PIR1, 0);
	BCF        PIR1+0, 0
;GPT1.c,55 :: 		}
L_end_GPT1_Flag_Clear:
	RETURN
; end of _GPT1_Flag_Clear

_GPT1_Flag_Read:

;GPT1.c,56 :: 		GPT1_Flag_t GPT1_Flag_Read(void){
;GPT1.c,58 :: 		if(GPT1_OVERFLOW_OCCURED == GET_BIT(PIR1, 0)){
	MOVLW      1
	ANDWF      PIR1+0, 0
	MOVWF      R1+0
	MOVLW      1
	XORWF      R1+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPT1_Flag_Read7
;GPT1.c,59 :: 		GPT1_Flag = GPT1_OVERFLOW_OCCURED;
	MOVLW      1
	MOVWF      R2+0
;GPT1.c,60 :: 		}else{
	GOTO       L_GPT1_Flag_Read8
L_GPT1_Flag_Read7:
;GPT1.c,61 :: 		GPT1_Flag = GPT1_OVERFLOW_NOT_OCCURED;
	CLRF       R2+0
;GPT1.c,62 :: 		}
L_GPT1_Flag_Read8:
;GPT1.c,63 :: 		return GPT1_Flag;
	MOVF       R2+0, 0
	MOVWF      R0+0
;GPT1.c,64 :: 		}
L_end_GPT1_Flag_Read:
	RETURN
; end of _GPT1_Flag_Read

_GPT1_Synchronization_Enable:

;GPT1.c,65 :: 		void GPT1_Synchronization_Enable(void){
;GPT1.c,66 :: 		CLEAR_BIT(T1CON, 2);
	BCF        T1CON+0, 2
;GPT1.c,67 :: 		}
L_end_GPT1_Synchronization_Enable:
	RETURN
; end of _GPT1_Synchronization_Enable

_GPT1_Synchronization_Disable:

;GPT1.c,68 :: 		void GPT1_Synchronization_Disable(void){
;GPT1.c,69 :: 		SET_BIT(T1CON, 2);
	BSF        T1CON+0, 2
;GPT1.c,70 :: 		}
L_end_GPT1_Synchronization_Disable:
	RETURN
; end of _GPT1_Synchronization_Disable

_GPT1_Init:

;GPT1.c,71 :: 		void GPT1_Init(const GPT1_CLK_SRC_t GPT1_CLK_SRC){
;GPT1.c,72 :: 		T1CON = 0X00; /* GPT1 Stop, OSC Disable, Synchronization Enable, Prescaler 1 To 1*/
	CLRF       T1CON+0
;GPT1.c,73 :: 		TMR1H = 0X00; /* Clear Timer1 High Buffer*/
	CLRF       TMR1H+0
;GPT1.c,74 :: 		TMR1L = 0X00; /* Clear Timer1 Low Buffer*/
	CLRF       TMR1L+0
;GPT1.c,75 :: 		if(GPT1_CLK_SRC_EXTERNAL == GPT1_CLK_SRC){
	MOVLW      1
	XORWF      FARG_GPT1_Init_GPT1_CLK_SRC+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPT1_Init9
;GPT1.c,76 :: 		SET_BIT(T1CON, 1);
	BSF        T1CON+0, 1
;GPT1.c,77 :: 		}else{
	GOTO       L_GPT1_Init10
L_GPT1_Init9:
;GPT1.c,78 :: 		CLEAR_BIT(T1CON, 1); /* GPT1_CLK_SRC_INTERNAL*/
	BCF        T1CON+0, 1
;GPT1.c,79 :: 		}
L_GPT1_Init10:
;GPT1.c,80 :: 		CLEAR_BIT(PIR1, 0); /* Clear Timer1 Flag */
	BCF        PIR1+0, 0
;GPT1.c,81 :: 		CLEAR_BIT(PIE1, 0); /* Disable Timer1 Interrupt */
	BCF        PIE1+0, 0
;GPT1.c,82 :: 		}
L_end_GPT1_Init:
	RETURN
; end of _GPT1_Init
