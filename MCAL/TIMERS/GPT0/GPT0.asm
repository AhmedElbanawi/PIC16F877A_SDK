
_GPT0_Init:

;GPT0.c,6 :: 		void GPT0_Init(const GPT0_CLK_SRC_t GPT0_CLK_SRC){
;GPT0.c,7 :: 		OPTION_REG = 0XFF;
	MOVLW      255
	MOVWF      OPTION_REG+0
;GPT0.c,8 :: 		TMR0 = 0X00; /* Clear Timer0 Buffer */
	CLRF       TMR0+0
;GPT0.c,9 :: 		if(GPT0_CLK_SRC_EXTERNAL == GPT0_CLK_SRC){
	MOVLW      1
	XORWF      FARG_GPT0_Init_GPT0_CLK_SRC+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPT0_Init0
;GPT0.c,10 :: 		SET_BIT(OPTION_REG, 5);
	BSF        OPTION_REG+0, 5
;GPT0.c,11 :: 		}else{
	GOTO       L_GPT0_Init1
L_GPT0_Init0:
;GPT0.c,12 :: 		CLEAR_BIT(OPTION_REG, 5);
	BCF        OPTION_REG+0, 5
;GPT0.c,13 :: 		}
L_GPT0_Init1:
;GPT0.c,14 :: 		CLEAR_BIT(INTCON, 2); /* Clear Timer0 Flag */
	BCF        INTCON+0, 2
;GPT0.c,15 :: 		CLEAR_BIT(INTCON, 5); /* Disable Timer0 Interrupt */
	BCF        INTCON+0, 5
;GPT0.c,16 :: 		}
L_end_GPT0_Init:
	RETURN
; end of _GPT0_Init

_GPT0_Interrupt_Disable:

;GPT0.c,17 :: 		void GPT0_Interrupt_Disable(void){
;GPT0.c,18 :: 		CLEAR_BIT(INTCON, 5);
	BCF        INTCON+0, 5
;GPT0.c,19 :: 		}
L_end_GPT0_Interrupt_Disable:
	RETURN
; end of _GPT0_Interrupt_Disable

_GPT0_Interrupt_Enable:

;GPT0.c,20 :: 		void GPT0_Interrupt_Enable(void){
;GPT0.c,21 :: 		SET_BIT(INTCON, 5);
	BSF        INTCON+0, 5
;GPT0.c,22 :: 		}
L_end_GPT0_Interrupt_Enable:
	RETURN
; end of _GPT0_Interrupt_Enable

_GPT0_Flag_Clear:

;GPT0.c,23 :: 		void GPT0_Flag_Clear(void){
;GPT0.c,24 :: 		CLEAR_BIT(INTCON, 2);
	BCF        INTCON+0, 2
;GPT0.c,25 :: 		}
L_end_GPT0_Flag_Clear:
	RETURN
; end of _GPT0_Flag_Clear

_GPT0_Flag_Read:

;GPT0.c,26 :: 		GPT0_Flag_t GPT0_Flag_Read(void){
;GPT0.c,28 :: 		if(GPT0_OVERFLOW_OCCURED == GET_BIT(INTCON, 2)){
	MOVLW      4
	ANDWF      INTCON+0, 0
	MOVWF      R2+0
	MOVF       R2+0, 0
	MOVWF      R1+0
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	MOVLW      1
	XORWF      R1+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPT0_Flag_Read2
;GPT0.c,29 :: 		GPT0_Flag = GPT0_OVERFLOW_OCCURED;
	MOVLW      1
	MOVWF      R3+0
;GPT0.c,30 :: 		}else{
	GOTO       L_GPT0_Flag_Read3
L_GPT0_Flag_Read2:
;GPT0.c,31 :: 		GPT0_Flag = GPT0_OVERFLOW_NOT_OCCURED;
	CLRF       R3+0
;GPT0.c,32 :: 		}
L_GPT0_Flag_Read3:
;GPT0.c,33 :: 		return GPT0_Flag;
	MOVF       R3+0, 0
	MOVWF      R0+0
;GPT0.c,34 :: 		}
L_end_GPT0_Flag_Read:
	RETURN
; end of _GPT0_Flag_Read

_GPT0_Start:

;GPT0.c,35 :: 		void GPT0_Start(void){
;GPT0.c,36 :: 		CLEAR_BIT(OPTION_REG, 3);
	BCF        OPTION_REG+0, 3
;GPT0.c,37 :: 		}
L_end_GPT0_Start:
	RETURN
; end of _GPT0_Start

_GPT0_Stop:

;GPT0.c,38 :: 		void GPT0_Stop(void){
;GPT0.c,39 :: 		SET_BIT(OPTION_REG, 3);
	BSF        OPTION_REG+0, 3
;GPT0.c,40 :: 		}
L_end_GPT0_Stop:
	RETURN
; end of _GPT0_Stop

_GPT0_Count_Rising_Edge:

;GPT0.c,41 :: 		void GPT0_Count_Rising_Edge(void){
;GPT0.c,42 :: 		CLEAR_BIT(OPTION_REG, 4);
	BCF        OPTION_REG+0, 4
;GPT0.c,43 :: 		}
L_end_GPT0_Count_Rising_Edge:
	RETURN
; end of _GPT0_Count_Rising_Edge

_GPT0_Count_Falling_Edge:

;GPT0.c,44 :: 		void GPT0_Count_Falling_Edge(void){
;GPT0.c,45 :: 		SET_BIT(OPTION_REG, 4);
	BSF        OPTION_REG+0, 4
;GPT0.c,46 :: 		}
L_end_GPT0_Count_Falling_Edge:
	RETURN
; end of _GPT0_Count_Falling_Edge

_GPT0_Prescaler_Update:

;GPT0.c,47 :: 		void GPT0_Prescaler_Update(const GPT0_Prescaler_t GPT0_PRESCALER){
;GPT0.c,48 :: 		OPTION_REG &= 0XF8;
	MOVLW      248
	ANDWF      OPTION_REG+0, 1
;GPT0.c,49 :: 		switch(GPT0_PRESCALER){
	GOTO       L_GPT0_Prescaler_Update4
;GPT0.c,50 :: 		case GPT0_PRESCALER_1_TO_2:
L_GPT0_Prescaler_Update6:
;GPT0.c,51 :: 		OPTION_REG |= GPT0_PRESCALER;
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	IORWF      OPTION_REG+0, 1
;GPT0.c,52 :: 		break;
	GOTO       L_GPT0_Prescaler_Update5
;GPT0.c,53 :: 		case GPT0_PRESCALER_1_TO_4:
L_GPT0_Prescaler_Update7:
;GPT0.c,54 :: 		OPTION_REG |= GPT0_PRESCALER;
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	IORWF      OPTION_REG+0, 1
;GPT0.c,55 :: 		break;
	GOTO       L_GPT0_Prescaler_Update5
;GPT0.c,56 :: 		case GPT0_PRESCALER_1_TO_8:
L_GPT0_Prescaler_Update8:
;GPT0.c,57 :: 		OPTION_REG |= GPT0_PRESCALER;
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	IORWF      OPTION_REG+0, 1
;GPT0.c,58 :: 		break;
	GOTO       L_GPT0_Prescaler_Update5
;GPT0.c,59 :: 		case GPT0_PRESCALER_1_TO_16:
L_GPT0_Prescaler_Update9:
;GPT0.c,60 :: 		OPTION_REG |= GPT0_PRESCALER;
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	IORWF      OPTION_REG+0, 1
;GPT0.c,61 :: 		break;
	GOTO       L_GPT0_Prescaler_Update5
;GPT0.c,62 :: 		case GPT0_PRESCALER_1_TO_32:
L_GPT0_Prescaler_Update10:
;GPT0.c,63 :: 		OPTION_REG |= GPT0_PRESCALER;
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	IORWF      OPTION_REG+0, 1
;GPT0.c,64 :: 		break;
	GOTO       L_GPT0_Prescaler_Update5
;GPT0.c,65 :: 		case GPT0_PRESCALER_1_TO_64:
L_GPT0_Prescaler_Update11:
;GPT0.c,66 :: 		OPTION_REG |= GPT0_PRESCALER;
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	IORWF      OPTION_REG+0, 1
;GPT0.c,67 :: 		break;
	GOTO       L_GPT0_Prescaler_Update5
;GPT0.c,68 :: 		case GPT0_PRESCALER_1_TO_128:
L_GPT0_Prescaler_Update12:
;GPT0.c,69 :: 		OPTION_REG |= GPT0_PRESCALER;
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	IORWF      OPTION_REG+0, 1
;GPT0.c,70 :: 		break;
	GOTO       L_GPT0_Prescaler_Update5
;GPT0.c,71 :: 		case GPT0_PRESCALER_1_TO_256:
L_GPT0_Prescaler_Update13:
;GPT0.c,72 :: 		OPTION_REG |= GPT0_PRESCALER;
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	IORWF      OPTION_REG+0, 1
;GPT0.c,73 :: 		break;
	GOTO       L_GPT0_Prescaler_Update5
;GPT0.c,74 :: 		default:
L_GPT0_Prescaler_Update14:
;GPT0.c,76 :: 		break;
	GOTO       L_GPT0_Prescaler_Update5
;GPT0.c,77 :: 		}
L_GPT0_Prescaler_Update4:
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPT0_Prescaler_Update6
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPT0_Prescaler_Update7
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPT0_Prescaler_Update8
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPT0_Prescaler_Update9
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GPT0_Prescaler_Update10
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_GPT0_Prescaler_Update11
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_GPT0_Prescaler_Update12
	MOVF       FARG_GPT0_Prescaler_Update_GPT0_PRESCALER+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_GPT0_Prescaler_Update13
	GOTO       L_GPT0_Prescaler_Update14
L_GPT0_Prescaler_Update5:
;GPT0.c,78 :: 		}
L_end_GPT0_Prescaler_Update:
	RETURN
; end of _GPT0_Prescaler_Update

_GPT0_Buffer_Update:

;GPT0.c,79 :: 		void GPT0_Buffer_Update(const u8_t GPT0_BUFFER_UPDATE_VAL){
;GPT0.c,80 :: 		TMR0 = GPT0_BUFFER_UPDATE_VAL;
	MOVF       FARG_GPT0_Buffer_Update_GPT0_BUFFER_UPDATE_VAL+0, 0
	MOVWF      TMR0+0
;GPT0.c,81 :: 		}
L_end_GPT0_Buffer_Update:
	RETURN
; end of _GPT0_Buffer_Update
