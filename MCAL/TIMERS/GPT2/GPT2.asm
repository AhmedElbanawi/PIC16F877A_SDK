
_GPT2_Start:

;GPT2.c,6 :: 		void GPT2_Start(void){
;GPT2.c,7 :: 		SET_BIT(T2CON, 2);
	BSF        T2CON+0, 2
;GPT2.c,8 :: 		}
L_end_GPT2_Start:
	RETURN
; end of _GPT2_Start

_GPT2_Stop:

;GPT2.c,10 :: 		void GPT2_Stop(void){
;GPT2.c,11 :: 		CLEAR_BIT(T2CON, 2);
	BCF        T2CON+0, 2
;GPT2.c,12 :: 		}
L_end_GPT2_Stop:
	RETURN
; end of _GPT2_Stop

_GPT2_Scaler_Update:

;GPT2.c,15 :: 		const GPT2_Postscaler_t GPT2_POSTSCALER){
;GPT2.c,17 :: 		switch(GPT2_PRESCALER){
	GOTO       L_GPT2_Scaler_Update0
;GPT2.c,18 :: 		case GPT2_PRESCALER_1_TO_1:
L_GPT2_Scaler_Update2:
;GPT2.c,19 :: 		T2CON = GPT2_PRESCALER;
	MOVF       FARG_GPT2_Scaler_Update_GPT2_PRESCALER+0, 0
	MOVWF      T2CON+0
;GPT2.c,20 :: 		break;
	GOTO       L_GPT2_Scaler_Update1
;GPT2.c,21 :: 		case GPT2_PRESCALER_1_TO_4:
L_GPT2_Scaler_Update3:
;GPT2.c,22 :: 		T2CON = GPT2_PRESCALER;
	MOVF       FARG_GPT2_Scaler_Update_GPT2_PRESCALER+0, 0
	MOVWF      T2CON+0
;GPT2.c,23 :: 		break;
	GOTO       L_GPT2_Scaler_Update1
;GPT2.c,24 :: 		case GPT2_PRESCALER_1_TO_16:
L_GPT2_Scaler_Update4:
;GPT2.c,25 :: 		T2CON = GPT2_PRESCALER;
	MOVF       FARG_GPT2_Scaler_Update_GPT2_PRESCALER+0, 0
	MOVWF      T2CON+0
;GPT2.c,26 :: 		break;
	GOTO       L_GPT2_Scaler_Update1
;GPT2.c,27 :: 		default:
L_GPT2_Scaler_Update5:
;GPT2.c,29 :: 		break;
	GOTO       L_GPT2_Scaler_Update1
;GPT2.c,30 :: 		}
L_GPT2_Scaler_Update0:
	MOVF       FARG_GPT2_Scaler_Update_GPT2_PRESCALER+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update2
	MOVF       FARG_GPT2_Scaler_Update_GPT2_PRESCALER+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update3
	MOVF       FARG_GPT2_Scaler_Update_GPT2_PRESCALER+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update4
	GOTO       L_GPT2_Scaler_Update5
L_GPT2_Scaler_Update1:
;GPT2.c,31 :: 		switch(GPT2_POSTSCALER){
	GOTO       L_GPT2_Scaler_Update6
;GPT2.c,32 :: 		case GPT2_POSTSCALER_1_TO_1:
L_GPT2_Scaler_Update8:
;GPT2.c,33 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,34 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,35 :: 		case GPT2_POSTSCALER_1_TO_2:
L_GPT2_Scaler_Update9:
;GPT2.c,36 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,37 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,38 :: 		case GPT2_POSTSCALER_1_TO_3:
L_GPT2_Scaler_Update10:
;GPT2.c,39 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,40 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,41 :: 		case GPT2_POSTSCALER_1_TO_4:
L_GPT2_Scaler_Update11:
;GPT2.c,42 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,43 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,44 :: 		case GPT2_POSTSCALER_1_TO_5:
L_GPT2_Scaler_Update12:
;GPT2.c,45 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,46 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,47 :: 		case GPT2_POSTSCALER_1_TO_6:
L_GPT2_Scaler_Update13:
;GPT2.c,48 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,49 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,50 :: 		case GPT2_POSTSCALER_1_TO_7:
L_GPT2_Scaler_Update14:
;GPT2.c,51 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,52 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,53 :: 		case GPT2_POSTSCALER_1_TO_8:
L_GPT2_Scaler_Update15:
;GPT2.c,54 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,55 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,56 :: 		case GPT2_POSTSCALER_1_TO_9:
L_GPT2_Scaler_Update16:
;GPT2.c,57 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,58 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,59 :: 		case GPT2_POSTSCALER_1_TO_10:
L_GPT2_Scaler_Update17:
;GPT2.c,60 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,61 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,62 :: 		case GPT2_POSTSCALER_1_TO_11:
L_GPT2_Scaler_Update18:
;GPT2.c,63 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,64 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,65 :: 		case GPT2_POSTSCALER_1_TO_12:
L_GPT2_Scaler_Update19:
;GPT2.c,66 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,67 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,68 :: 		case GPT2_POSTSCALER_1_TO_13:
L_GPT2_Scaler_Update20:
;GPT2.c,69 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,70 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,71 :: 		case GPT2_POSTSCALER_1_TO_14:
L_GPT2_Scaler_Update21:
;GPT2.c,72 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,73 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,74 :: 		case GPT2_POSTSCALER_1_TO_15:
L_GPT2_Scaler_Update22:
;GPT2.c,75 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,76 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,77 :: 		case GPT2_POSTSCALER_1_TO_16:
L_GPT2_Scaler_Update23:
;GPT2.c,78 :: 		T2CON |= (GPT2_POSTSCALER << 3);
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      T2CON+0, 1
;GPT2.c,79 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,80 :: 		default:
L_GPT2_Scaler_Update24:
;GPT2.c,82 :: 		break;
	GOTO       L_GPT2_Scaler_Update7
;GPT2.c,84 :: 		}
L_GPT2_Scaler_Update6:
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update8
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update9
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update10
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update11
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update12
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update13
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update14
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update15
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update16
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update17
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update18
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update19
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update20
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update21
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update22
	MOVF       FARG_GPT2_Scaler_Update_GPT2_POSTSCALER+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_GPT2_Scaler_Update23
	GOTO       L_GPT2_Scaler_Update24
L_GPT2_Scaler_Update7:
;GPT2.c,85 :: 		}
L_end_GPT2_Scaler_Update:
	RETURN
; end of _GPT2_Scaler_Update

_GPT2_Update_us:

;GPT2.c,87 :: 		void GPT2_Update_us(const u8_t GPT2_UPDATE_VAL){
;GPT2.c,88 :: 		PR2 = GPT2_UPDATE_VAL; /* Reload The Period Register */
	MOVF       FARG_GPT2_Update_us_GPT2_UPDATE_VAL+0, 0
	MOVWF      PR2+0
;GPT2.c,89 :: 		}
L_end_GPT2_Update_us:
	RETURN
; end of _GPT2_Update_us

_GPT2_Init:

;GPT2.c,91 :: 		void GPT2_Init(void){
;GPT2.c,92 :: 		T2CON = 0X00; /* Stop GPT2, Prescaler and PostScaler are 1 : 1 */
	CLRF       T2CON+0
;GPT2.c,93 :: 		PR2 = 0XFF;   /* Init Period Register With Max Value */
	MOVLW      255
	MOVWF      PR2+0
;GPT2.c,94 :: 		TMR2 = 0X00;  /* Init Timer2 Register With Min Value */
	CLRF       TMR2+0
;GPT2.c,95 :: 		CLEAR_BIT(PIR1, 1); /* Clear Timer2 Flag */
	BCF        PIR1+0, 1
;GPT2.c,96 :: 		CLEAR_BIT(PIE1, 1); /* Disable Timer2 Interrupt */
	BCF        PIE1+0, 1
;GPT2.c,97 :: 		}
L_end_GPT2_Init:
	RETURN
; end of _GPT2_Init

_GPT2_Flag_Clear:

;GPT2.c,99 :: 		void GPT2_Flag_Clear(void){
;GPT2.c,100 :: 		CLEAR_BIT(PIR1, 1);
	BCF        PIR1+0, 1
;GPT2.c,101 :: 		}
L_end_GPT2_Flag_Clear:
	RETURN
; end of _GPT2_Flag_Clear

_GPT2_Flag_Read:

;GPT2.c,103 :: 		GPT2_Flag_t GPT2_Flag_Read(void){
;GPT2.c,105 :: 		if(GPT2_OVERFLOW_OCCURED == GET_BIT(PIR1, 1)){
	MOVLW      2
	ANDWF      PIR1+0, 0
	MOVWF      R2+0
	MOVF       R2+0, 0
	MOVWF      R1+0
	RRF        R1+0, 1
	BCF        R1+0, 7
	MOVLW      1
	XORWF      R1+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPT2_Flag_Read25
;GPT2.c,106 :: 		GPT2_Flag = GPT2_OVERFLOW_OCCURED;
	MOVLW      1
	MOVWF      R3+0
;GPT2.c,107 :: 		}else{
	GOTO       L_GPT2_Flag_Read26
L_GPT2_Flag_Read25:
;GPT2.c,108 :: 		GPT2_Flag = GPT2_OVERFLOW_NOT_OCCURED;
	CLRF       R3+0
;GPT2.c,109 :: 		}
L_GPT2_Flag_Read26:
;GPT2.c,110 :: 		return GPT2_Flag;
	MOVF       R3+0, 0
	MOVWF      R0+0
;GPT2.c,111 :: 		}
L_end_GPT2_Flag_Read:
	RETURN
; end of _GPT2_Flag_Read

_GPT2_Interrupt_Disable:

;GPT2.c,113 :: 		void GPT2_Interrupt_Disable(void){
;GPT2.c,114 :: 		CLEAR_BIT(PIE1, 1);
	BCF        PIE1+0, 1
;GPT2.c,115 :: 		}
L_end_GPT2_Interrupt_Disable:
	RETURN
; end of _GPT2_Interrupt_Disable

_GPT2_Interrupt_Enable:

;GPT2.c,117 :: 		void GPT2_Interrupt_Enable(void){
;GPT2.c,118 :: 		SET_BIT(PIE1, 1);
	BSF        PIE1+0, 1
;GPT2.c,119 :: 		}
L_end_GPT2_Interrupt_Enable:
	RETURN
; end of _GPT2_Interrupt_Enable
