
_WDT_Update:

;WDT.c,6 :: 		void WDT_Update(const WDT_Period_t WDT_PERIOD){
;WDT.c,7 :: 		SET_BIT(OPTION_REG, 3);                /* Assign Prescaler To WDT */
	BSF        OPTION_REG+0, 3
;WDT.c,8 :: 		OPTION_REG &= 0XF8;                    /* Inite WDT Prescaler */
	MOVLW      248
	ANDWF      OPTION_REG+0, 1
;WDT.c,9 :: 		OPTION_REG |= WDT_PERIOD;             /* Assign The Reguired Prescaler */
	MOVF       FARG_WDT_Update_WDT_PERIOD+0, 0
	IORWF      OPTION_REG+0, 1
;WDT.c,10 :: 		}
L_end_WDT_Update:
	RETURN
; end of _WDT_Update
