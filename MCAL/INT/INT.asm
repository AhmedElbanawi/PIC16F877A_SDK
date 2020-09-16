
_INT_Global_Init:

;INT.c,6 :: 		void INT_Global_Init(void){
;INT.c,7 :: 		CLEAR_BIT(INTCON, 7); /* Disable Global Interrupt */
	MOVLW      127
	ANDWF      INTCON+0, 1
;INT.c,8 :: 		SET_BIT(INTCON, 6);  /* Enable Peripherals Interrupt */
	BSF        INTCON+0, 6
;INT.c,9 :: 		}
L_end_INT_Global_Init:
	RETURN
; end of _INT_Global_Init

_INT_Global_Disable:

;INT.c,10 :: 		void INT_Global_Disable(void){
;INT.c,11 :: 		CLEAR_BIT(INTCON, 7);
	MOVLW      127
	ANDWF      INTCON+0, 1
;INT.c,12 :: 		}
L_end_INT_Global_Disable:
	RETURN
; end of _INT_Global_Disable

_INT_Global_Enable:

;INT.c,13 :: 		void INT_Global_Enable(void){
;INT.c,14 :: 		SET_BIT(INTCON, 7);
	BSF        INTCON+0, 7
;INT.c,15 :: 		}
L_end_INT_Global_Enable:
	RETURN
; end of _INT_Global_Enable
