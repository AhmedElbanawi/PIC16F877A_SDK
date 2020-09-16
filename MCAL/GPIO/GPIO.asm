
_GPIO_SetPinDirection:

;GPIO.c,48 :: 		const GPIO_Direction_t GPIO_PIN_DIRECTION){
;GPIO.c,51 :: 		switch(GPIO_PORT_ID){
	GOTO       L_GPIO_SetPinDirection0
;GPIO.c,52 :: 		case GPIO_PORTA:
L_GPIO_SetPinDirection2:
;GPIO.c,53 :: 		Pin_Direction_Ptr = (volatile Pin_Direction_t*)PORTA_DIRECTION_ADDRESS;
	MOVLW      133
	MOVWF      R1+0
;GPIO.c,54 :: 		break;
	GOTO       L_GPIO_SetPinDirection1
;GPIO.c,55 :: 		case GPIO_PORTB:
L_GPIO_SetPinDirection3:
;GPIO.c,56 :: 		Pin_Direction_Ptr = (volatile Pin_Direction_t*)PORTB_DIRECTION_ADDRESS;
	MOVLW      134
	MOVWF      R1+0
;GPIO.c,57 :: 		break;
	GOTO       L_GPIO_SetPinDirection1
;GPIO.c,58 :: 		case GPIO_PORTC:
L_GPIO_SetPinDirection4:
;GPIO.c,59 :: 		Pin_Direction_Ptr = (volatile Pin_Direction_t*)PORTC_DIRECTION_ADDRESS;
	MOVLW      135
	MOVWF      R1+0
;GPIO.c,60 :: 		break;
	GOTO       L_GPIO_SetPinDirection1
;GPIO.c,61 :: 		case GPIO_PORTD:
L_GPIO_SetPinDirection5:
;GPIO.c,62 :: 		Pin_Direction_Ptr = (volatile Pin_Direction_t*)PORTD_DIRECTION_ADDRESS;
	MOVLW      136
	MOVWF      R1+0
;GPIO.c,63 :: 		break;
	GOTO       L_GPIO_SetPinDirection1
;GPIO.c,64 :: 		case GPIO_PORTE:
L_GPIO_SetPinDirection6:
;GPIO.c,65 :: 		Pin_Direction_Ptr = (volatile Pin_Direction_t*)PORTE_DIRECTION_ADDRESS;
	MOVLW      137
	MOVWF      R1+0
;GPIO.c,66 :: 		break;
	GOTO       L_GPIO_SetPinDirection1
;GPIO.c,67 :: 		default:
L_GPIO_SetPinDirection7:
;GPIO.c,69 :: 		return;
	GOTO       L_end_GPIO_SetPinDirection
;GPIO.c,70 :: 		}
L_GPIO_SetPinDirection0:
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PORT_ID+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection2
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PORT_ID+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection3
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PORT_ID+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection4
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PORT_ID+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection5
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PORT_ID+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection6
	GOTO       L_GPIO_SetPinDirection7
L_GPIO_SetPinDirection1:
;GPIO.c,71 :: 		switch(GPIO_PIN_ID){
	GOTO       L_GPIO_SetPinDirection8
;GPIO.c,72 :: 		case GPIO_PIN0:
L_GPIO_SetPinDirection10:
;GPIO.c,73 :: 		if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
	MOVLW      0
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection11
;GPIO.c,74 :: 		Pin_Direction_Ptr->Pin0 = PIN_OUTPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 0
;GPIO.c,75 :: 		}else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
	GOTO       L_GPIO_SetPinDirection12
L_GPIO_SetPinDirection11:
	MOVLW      1
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection13
;GPIO.c,76 :: 		Pin_Direction_Ptr->Pin0 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 0
;GPIO.c,77 :: 		}else{
	GOTO       L_GPIO_SetPinDirection14
L_GPIO_SetPinDirection13:
;GPIO.c,79 :: 		Pin_Direction_Ptr->Pin0 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 0
;GPIO.c,80 :: 		}
L_GPIO_SetPinDirection14:
L_GPIO_SetPinDirection12:
;GPIO.c,81 :: 		break;
	GOTO       L_GPIO_SetPinDirection9
;GPIO.c,82 :: 		case GPIO_PIN1:
L_GPIO_SetPinDirection15:
;GPIO.c,83 :: 		if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
	MOVLW      0
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection16
;GPIO.c,84 :: 		Pin_Direction_Ptr->Pin1 = PIN_OUTPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 1
;GPIO.c,85 :: 		}else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
	GOTO       L_GPIO_SetPinDirection17
L_GPIO_SetPinDirection16:
	MOVLW      1
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection18
;GPIO.c,86 :: 		Pin_Direction_Ptr->Pin1 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 1
;GPIO.c,87 :: 		}else{
	GOTO       L_GPIO_SetPinDirection19
L_GPIO_SetPinDirection18:
;GPIO.c,89 :: 		Pin_Direction_Ptr->Pin1 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 1
;GPIO.c,90 :: 		}
L_GPIO_SetPinDirection19:
L_GPIO_SetPinDirection17:
;GPIO.c,91 :: 		break;
	GOTO       L_GPIO_SetPinDirection9
;GPIO.c,92 :: 		case GPIO_PIN2:
L_GPIO_SetPinDirection20:
;GPIO.c,93 :: 		if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
	MOVLW      0
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection21
;GPIO.c,94 :: 		Pin_Direction_Ptr->Pin2 = PIN_OUTPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 2
;GPIO.c,95 :: 		}else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
	GOTO       L_GPIO_SetPinDirection22
L_GPIO_SetPinDirection21:
	MOVLW      1
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection23
;GPIO.c,96 :: 		Pin_Direction_Ptr->Pin2 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 2
;GPIO.c,97 :: 		}else{
	GOTO       L_GPIO_SetPinDirection24
L_GPIO_SetPinDirection23:
;GPIO.c,99 :: 		Pin_Direction_Ptr->Pin2 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 2
;GPIO.c,100 :: 		}
L_GPIO_SetPinDirection24:
L_GPIO_SetPinDirection22:
;GPIO.c,101 :: 		break;
	GOTO       L_GPIO_SetPinDirection9
;GPIO.c,102 :: 		case GPIO_PIN3:
L_GPIO_SetPinDirection25:
;GPIO.c,103 :: 		if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
	MOVLW      0
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection26
;GPIO.c,104 :: 		Pin_Direction_Ptr->Pin3 = PIN_OUTPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 3
;GPIO.c,105 :: 		}else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
	GOTO       L_GPIO_SetPinDirection27
L_GPIO_SetPinDirection26:
	MOVLW      1
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection28
;GPIO.c,106 :: 		Pin_Direction_Ptr->Pin3 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 3
;GPIO.c,107 :: 		}else{
	GOTO       L_GPIO_SetPinDirection29
L_GPIO_SetPinDirection28:
;GPIO.c,109 :: 		Pin_Direction_Ptr->Pin3 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 3
;GPIO.c,110 :: 		}
L_GPIO_SetPinDirection29:
L_GPIO_SetPinDirection27:
;GPIO.c,111 :: 		break;
	GOTO       L_GPIO_SetPinDirection9
;GPIO.c,112 :: 		case GPIO_PIN4:
L_GPIO_SetPinDirection30:
;GPIO.c,113 :: 		if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
	MOVLW      0
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection31
;GPIO.c,114 :: 		Pin_Direction_Ptr->Pin4 = PIN_OUTPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 4
;GPIO.c,115 :: 		}else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
	GOTO       L_GPIO_SetPinDirection32
L_GPIO_SetPinDirection31:
	MOVLW      1
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection33
;GPIO.c,116 :: 		Pin_Direction_Ptr->Pin4 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 4
;GPIO.c,117 :: 		}else{
	GOTO       L_GPIO_SetPinDirection34
L_GPIO_SetPinDirection33:
;GPIO.c,119 :: 		Pin_Direction_Ptr->Pin4 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 4
;GPIO.c,120 :: 		}
L_GPIO_SetPinDirection34:
L_GPIO_SetPinDirection32:
;GPIO.c,121 :: 		break;
	GOTO       L_GPIO_SetPinDirection9
;GPIO.c,122 :: 		case GPIO_PIN5:
L_GPIO_SetPinDirection35:
;GPIO.c,123 :: 		if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
	MOVLW      0
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection36
;GPIO.c,124 :: 		Pin_Direction_Ptr->Pin5 = PIN_OUTPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 5
;GPIO.c,125 :: 		}else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
	GOTO       L_GPIO_SetPinDirection37
L_GPIO_SetPinDirection36:
	MOVLW      1
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection38
;GPIO.c,126 :: 		Pin_Direction_Ptr->Pin5 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 5
;GPIO.c,127 :: 		}else{
	GOTO       L_GPIO_SetPinDirection39
L_GPIO_SetPinDirection38:
;GPIO.c,129 :: 		Pin_Direction_Ptr->Pin5 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 5
;GPIO.c,130 :: 		}
L_GPIO_SetPinDirection39:
L_GPIO_SetPinDirection37:
;GPIO.c,131 :: 		break;
	GOTO       L_GPIO_SetPinDirection9
;GPIO.c,132 :: 		case GPIO_PIN6:
L_GPIO_SetPinDirection40:
;GPIO.c,133 :: 		if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
	MOVLW      0
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection41
;GPIO.c,134 :: 		Pin_Direction_Ptr->Pin6 = PIN_OUTPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 6
;GPIO.c,135 :: 		}else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
	GOTO       L_GPIO_SetPinDirection42
L_GPIO_SetPinDirection41:
	MOVLW      1
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection43
;GPIO.c,136 :: 		Pin_Direction_Ptr->Pin6 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 6
;GPIO.c,137 :: 		}else{
	GOTO       L_GPIO_SetPinDirection44
L_GPIO_SetPinDirection43:
;GPIO.c,139 :: 		Pin_Direction_Ptr->Pin6 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 6
;GPIO.c,140 :: 		}
L_GPIO_SetPinDirection44:
L_GPIO_SetPinDirection42:
;GPIO.c,141 :: 		break;
	GOTO       L_GPIO_SetPinDirection9
;GPIO.c,142 :: 		case GPIO_PIN7:
L_GPIO_SetPinDirection45:
;GPIO.c,143 :: 		if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
	MOVLW      0
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection46
;GPIO.c,144 :: 		Pin_Direction_Ptr->Pin7 = PIN_OUTPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 7
;GPIO.c,145 :: 		}else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
	GOTO       L_GPIO_SetPinDirection47
L_GPIO_SetPinDirection46:
	MOVLW      1
	XORWF      FARG_GPIO_SetPinDirection_GPIO_PIN_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection48
;GPIO.c,146 :: 		Pin_Direction_Ptr->Pin7 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 7
;GPIO.c,147 :: 		}else{
	GOTO       L_GPIO_SetPinDirection49
L_GPIO_SetPinDirection48:
;GPIO.c,149 :: 		Pin_Direction_Ptr->Pin7 = PIN_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 7
;GPIO.c,150 :: 		}
L_GPIO_SetPinDirection49:
L_GPIO_SetPinDirection47:
;GPIO.c,151 :: 		break;
	GOTO       L_GPIO_SetPinDirection9
;GPIO.c,152 :: 		default:
L_GPIO_SetPinDirection50:
;GPIO.c,154 :: 		break;
	GOTO       L_GPIO_SetPinDirection9
;GPIO.c,155 :: 		}
L_GPIO_SetPinDirection8:
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PIN_ID+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection10
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PIN_ID+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection15
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PIN_ID+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection20
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PIN_ID+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection25
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PIN_ID+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection30
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PIN_ID+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection35
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PIN_ID+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection40
	MOVF       FARG_GPIO_SetPinDirection_GPIO_PIN_ID+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection45
	GOTO       L_GPIO_SetPinDirection50
L_GPIO_SetPinDirection9:
;GPIO.c,156 :: 		}
L_end_GPIO_SetPinDirection:
	RETURN
; end of _GPIO_SetPinDirection

_GPIO_SetPinValue:

;GPIO.c,160 :: 		const GPIO_PinValue_t GPIO_PIN_VALUE){
;GPIO.c,163 :: 		switch(GPIO_PORT_ID){
	GOTO       L_GPIO_SetPinValue51
;GPIO.c,164 :: 		case GPIO_PORTA:
L_GPIO_SetPinValue53:
;GPIO.c,165 :: 		Pin_Value_Ptr = (volatile Pin_Value_t*)PORTA_WRITE_ADDRESS;
	MOVLW      5
	MOVWF      R1+0
;GPIO.c,166 :: 		break;
	GOTO       L_GPIO_SetPinValue52
;GPIO.c,167 :: 		case GPIO_PORTB:
L_GPIO_SetPinValue54:
;GPIO.c,168 :: 		Pin_Value_Ptr = (volatile Pin_Value_t*)PORTB_WRITE_ADDRESS;
	MOVLW      6
	MOVWF      R1+0
;GPIO.c,169 :: 		break;
	GOTO       L_GPIO_SetPinValue52
;GPIO.c,170 :: 		case GPIO_PORTC:
L_GPIO_SetPinValue55:
;GPIO.c,171 :: 		Pin_Value_Ptr = (volatile Pin_Value_t*)PORTC_WRITE_ADDRESS;
	MOVLW      7
	MOVWF      R1+0
;GPIO.c,172 :: 		break;
	GOTO       L_GPIO_SetPinValue52
;GPIO.c,173 :: 		case GPIO_PORTD:
L_GPIO_SetPinValue56:
;GPIO.c,174 :: 		Pin_Value_Ptr = (volatile Pin_Value_t*)PORTD_WRITE_ADDRESS;
	MOVLW      8
	MOVWF      R1+0
;GPIO.c,175 :: 		break;
	GOTO       L_GPIO_SetPinValue52
;GPIO.c,176 :: 		case GPIO_PORTE:
L_GPIO_SetPinValue57:
;GPIO.c,177 :: 		Pin_Value_Ptr = (volatile Pin_Value_t*)PORTE_WRITE_ADDRESS;
	MOVLW      9
	MOVWF      R1+0
;GPIO.c,178 :: 		break;
	GOTO       L_GPIO_SetPinValue52
;GPIO.c,179 :: 		default:
L_GPIO_SetPinValue58:
;GPIO.c,181 :: 		return;
	GOTO       L_end_GPIO_SetPinValue
;GPIO.c,182 :: 		}
L_GPIO_SetPinValue51:
	MOVF       FARG_GPIO_SetPinValue_GPIO_PORT_ID+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue53
	MOVF       FARG_GPIO_SetPinValue_GPIO_PORT_ID+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue54
	MOVF       FARG_GPIO_SetPinValue_GPIO_PORT_ID+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue55
	MOVF       FARG_GPIO_SetPinValue_GPIO_PORT_ID+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue56
	MOVF       FARG_GPIO_SetPinValue_GPIO_PORT_ID+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue57
	GOTO       L_GPIO_SetPinValue58
L_GPIO_SetPinValue52:
;GPIO.c,183 :: 		switch(GPIO_PIN_ID){
	GOTO       L_GPIO_SetPinValue59
;GPIO.c,184 :: 		case GPIO_PIN0:
L_GPIO_SetPinValue61:
;GPIO.c,185 :: 		if(GPIO_HIGH == GPIO_PIN_VALUE){
	MOVLW      1
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue62
;GPIO.c,186 :: 		Pin_Value_Ptr->Pin0 = PIN_HIGH;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 0
;GPIO.c,187 :: 		}else if(GPIO_LOW == GPIO_PIN_VALUE){
	GOTO       L_GPIO_SetPinValue63
L_GPIO_SetPinValue62:
	MOVLW      0
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue64
;GPIO.c,188 :: 		Pin_Value_Ptr->Pin0 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 0
;GPIO.c,189 :: 		}else{
	GOTO       L_GPIO_SetPinValue65
L_GPIO_SetPinValue64:
;GPIO.c,191 :: 		Pin_Value_Ptr->Pin0 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 0
;GPIO.c,192 :: 		}
L_GPIO_SetPinValue65:
L_GPIO_SetPinValue63:
;GPIO.c,193 :: 		break;
	GOTO       L_GPIO_SetPinValue60
;GPIO.c,194 :: 		case GPIO_PIN1:
L_GPIO_SetPinValue66:
;GPIO.c,195 :: 		if(GPIO_HIGH == GPIO_PIN_VALUE){
	MOVLW      1
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue67
;GPIO.c,196 :: 		Pin_Value_Ptr->Pin1 = PIN_HIGH;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 1
;GPIO.c,197 :: 		}else if(GPIO_LOW == GPIO_PIN_VALUE){
	GOTO       L_GPIO_SetPinValue68
L_GPIO_SetPinValue67:
	MOVLW      0
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue69
;GPIO.c,198 :: 		Pin_Value_Ptr->Pin1 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 1
;GPIO.c,199 :: 		}else{
	GOTO       L_GPIO_SetPinValue70
L_GPIO_SetPinValue69:
;GPIO.c,201 :: 		Pin_Value_Ptr->Pin1 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 1
;GPIO.c,202 :: 		}
L_GPIO_SetPinValue70:
L_GPIO_SetPinValue68:
;GPIO.c,203 :: 		break;
	GOTO       L_GPIO_SetPinValue60
;GPIO.c,204 :: 		case GPIO_PIN2:
L_GPIO_SetPinValue71:
;GPIO.c,205 :: 		if(GPIO_HIGH == GPIO_PIN_VALUE){
	MOVLW      1
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue72
;GPIO.c,206 :: 		Pin_Value_Ptr->Pin2 = PIN_HIGH;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 2
;GPIO.c,207 :: 		}else if(GPIO_LOW == GPIO_PIN_VALUE){
	GOTO       L_GPIO_SetPinValue73
L_GPIO_SetPinValue72:
	MOVLW      0
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue74
;GPIO.c,208 :: 		Pin_Value_Ptr->Pin2 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 2
;GPIO.c,209 :: 		}else{
	GOTO       L_GPIO_SetPinValue75
L_GPIO_SetPinValue74:
;GPIO.c,211 :: 		Pin_Value_Ptr->Pin2 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 2
;GPIO.c,212 :: 		}
L_GPIO_SetPinValue75:
L_GPIO_SetPinValue73:
;GPIO.c,213 :: 		break;
	GOTO       L_GPIO_SetPinValue60
;GPIO.c,214 :: 		case GPIO_PIN3:
L_GPIO_SetPinValue76:
;GPIO.c,215 :: 		if(GPIO_HIGH == GPIO_PIN_VALUE){
	MOVLW      1
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue77
;GPIO.c,216 :: 		Pin_Value_Ptr->Pin3 = PIN_HIGH;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 3
;GPIO.c,217 :: 		}else if(GPIO_LOW == GPIO_PIN_VALUE){
	GOTO       L_GPIO_SetPinValue78
L_GPIO_SetPinValue77:
	MOVLW      0
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue79
;GPIO.c,218 :: 		Pin_Value_Ptr->Pin3 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 3
;GPIO.c,219 :: 		}else{
	GOTO       L_GPIO_SetPinValue80
L_GPIO_SetPinValue79:
;GPIO.c,221 :: 		Pin_Value_Ptr->Pin3 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 3
;GPIO.c,222 :: 		}
L_GPIO_SetPinValue80:
L_GPIO_SetPinValue78:
;GPIO.c,223 :: 		break;
	GOTO       L_GPIO_SetPinValue60
;GPIO.c,224 :: 		case GPIO_PIN4:
L_GPIO_SetPinValue81:
;GPIO.c,225 :: 		if(GPIO_HIGH == GPIO_PIN_VALUE){
	MOVLW      1
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue82
;GPIO.c,226 :: 		Pin_Value_Ptr->Pin4 = PIN_HIGH;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 4
;GPIO.c,227 :: 		}else if(GPIO_LOW == GPIO_PIN_VALUE){
	GOTO       L_GPIO_SetPinValue83
L_GPIO_SetPinValue82:
	MOVLW      0
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue84
;GPIO.c,228 :: 		Pin_Value_Ptr->Pin4 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 4
;GPIO.c,229 :: 		}else{
	GOTO       L_GPIO_SetPinValue85
L_GPIO_SetPinValue84:
;GPIO.c,231 :: 		Pin_Value_Ptr->Pin4 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 4
;GPIO.c,232 :: 		}
L_GPIO_SetPinValue85:
L_GPIO_SetPinValue83:
;GPIO.c,233 :: 		break;
	GOTO       L_GPIO_SetPinValue60
;GPIO.c,234 :: 		case GPIO_PIN5:
L_GPIO_SetPinValue86:
;GPIO.c,235 :: 		if(GPIO_HIGH == GPIO_PIN_VALUE){
	MOVLW      1
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue87
;GPIO.c,236 :: 		Pin_Value_Ptr->Pin5 = PIN_HIGH;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 5
;GPIO.c,237 :: 		}else if(GPIO_LOW == GPIO_PIN_VALUE){
	GOTO       L_GPIO_SetPinValue88
L_GPIO_SetPinValue87:
	MOVLW      0
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue89
;GPIO.c,238 :: 		Pin_Value_Ptr->Pin5 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 5
;GPIO.c,239 :: 		}else{
	GOTO       L_GPIO_SetPinValue90
L_GPIO_SetPinValue89:
;GPIO.c,241 :: 		Pin_Value_Ptr->Pin5 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 5
;GPIO.c,242 :: 		}
L_GPIO_SetPinValue90:
L_GPIO_SetPinValue88:
;GPIO.c,243 :: 		break;
	GOTO       L_GPIO_SetPinValue60
;GPIO.c,244 :: 		case GPIO_PIN6:
L_GPIO_SetPinValue91:
;GPIO.c,245 :: 		if(GPIO_HIGH == GPIO_PIN_VALUE){
	MOVLW      1
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue92
;GPIO.c,246 :: 		Pin_Value_Ptr->Pin6 = PIN_HIGH;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 6
;GPIO.c,247 :: 		}else if(GPIO_LOW == GPIO_PIN_VALUE){
	GOTO       L_GPIO_SetPinValue93
L_GPIO_SetPinValue92:
	MOVLW      0
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue94
;GPIO.c,248 :: 		Pin_Value_Ptr->Pin6 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 6
;GPIO.c,249 :: 		}else{
	GOTO       L_GPIO_SetPinValue95
L_GPIO_SetPinValue94:
;GPIO.c,251 :: 		Pin_Value_Ptr->Pin6 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 6
;GPIO.c,252 :: 		}
L_GPIO_SetPinValue95:
L_GPIO_SetPinValue93:
;GPIO.c,253 :: 		break;
	GOTO       L_GPIO_SetPinValue60
;GPIO.c,254 :: 		case GPIO_PIN7:
L_GPIO_SetPinValue96:
;GPIO.c,255 :: 		if(GPIO_HIGH == GPIO_PIN_VALUE){
	MOVLW      1
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue97
;GPIO.c,256 :: 		Pin_Value_Ptr->Pin7 = PIN_HIGH;
	MOVF       R1+0, 0
	MOVWF      FSR
	BSF        INDF+0, 7
;GPIO.c,257 :: 		}else if(GPIO_LOW == GPIO_PIN_VALUE){
	GOTO       L_GPIO_SetPinValue98
L_GPIO_SetPinValue97:
	MOVLW      0
	XORWF      FARG_GPIO_SetPinValue_GPIO_PIN_VALUE+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue99
;GPIO.c,258 :: 		Pin_Value_Ptr->Pin7 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 7
;GPIO.c,259 :: 		}else{
	GOTO       L_GPIO_SetPinValue100
L_GPIO_SetPinValue99:
;GPIO.c,261 :: 		Pin_Value_Ptr->Pin7 = PIN_LOW;
	MOVF       R1+0, 0
	MOVWF      FSR
	BCF        INDF+0, 7
;GPIO.c,262 :: 		}
L_GPIO_SetPinValue100:
L_GPIO_SetPinValue98:
;GPIO.c,263 :: 		break;
	GOTO       L_GPIO_SetPinValue60
;GPIO.c,264 :: 		default:
L_GPIO_SetPinValue101:
;GPIO.c,266 :: 		break;
	GOTO       L_GPIO_SetPinValue60
;GPIO.c,267 :: 		}
L_GPIO_SetPinValue59:
	MOVF       FARG_GPIO_SetPinValue_GPIO_PIN_ID+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue61
	MOVF       FARG_GPIO_SetPinValue_GPIO_PIN_ID+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue66
	MOVF       FARG_GPIO_SetPinValue_GPIO_PIN_ID+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue71
	MOVF       FARG_GPIO_SetPinValue_GPIO_PIN_ID+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue76
	MOVF       FARG_GPIO_SetPinValue_GPIO_PIN_ID+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue81
	MOVF       FARG_GPIO_SetPinValue_GPIO_PIN_ID+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue86
	MOVF       FARG_GPIO_SetPinValue_GPIO_PIN_ID+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue91
	MOVF       FARG_GPIO_SetPinValue_GPIO_PIN_ID+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue96
	GOTO       L_GPIO_SetPinValue101
L_GPIO_SetPinValue60:
;GPIO.c,268 :: 		}
L_end_GPIO_SetPinValue:
	RETURN
; end of _GPIO_SetPinValue

_GPIO_ReadPinValue:

;GPIO.c,271 :: 		const GPIO_Pin_ID_t GPIO_PIN_ID){
;GPIO.c,274 :: 		GPIO_PinValue_t GPIO_PinValue = GPIO_HIGH;
	MOVLW      1
	MOVWF      GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,275 :: 		switch(GPIO_PORT_ID){
	GOTO       L_GPIO_ReadPinValue102
;GPIO.c,276 :: 		case GPIO_PORTA:
L_GPIO_ReadPinValue104:
;GPIO.c,277 :: 		Pin_Value_Ptr = (volatile Pin_Value_t*)PORTA_READ_ADDRESS;
	MOVLW      5
	MOVWF      R1+0
;GPIO.c,278 :: 		break;
	GOTO       L_GPIO_ReadPinValue103
;GPIO.c,279 :: 		case GPIO_PORTB:
L_GPIO_ReadPinValue105:
;GPIO.c,280 :: 		Pin_Value_Ptr = (volatile Pin_Value_t*)PORTB_READ_ADDRESS;
	MOVLW      6
	MOVWF      R1+0
;GPIO.c,281 :: 		break;
	GOTO       L_GPIO_ReadPinValue103
;GPIO.c,282 :: 		case GPIO_PORTC:
L_GPIO_ReadPinValue106:
;GPIO.c,283 :: 		Pin_Value_Ptr = (volatile Pin_Value_t*)PORTC_READ_ADDRESS;
	MOVLW      7
	MOVWF      R1+0
;GPIO.c,284 :: 		break;
	GOTO       L_GPIO_ReadPinValue103
;GPIO.c,285 :: 		case GPIO_PORTD:
L_GPIO_ReadPinValue107:
;GPIO.c,286 :: 		Pin_Value_Ptr = (volatile Pin_Value_t*)PORTD_READ_ADDRESS;
	MOVLW      8
	MOVWF      R1+0
;GPIO.c,287 :: 		break;
	GOTO       L_GPIO_ReadPinValue103
;GPIO.c,288 :: 		case GPIO_PORTE:
L_GPIO_ReadPinValue108:
;GPIO.c,289 :: 		Pin_Value_Ptr = (volatile Pin_Value_t*)PORTE_READ_ADDRESS;
	MOVLW      9
	MOVWF      R1+0
;GPIO.c,290 :: 		break;
	GOTO       L_GPIO_ReadPinValue103
;GPIO.c,291 :: 		default:
L_GPIO_ReadPinValue109:
;GPIO.c,293 :: 		GPIO_PinValue = GPIO_LOW;
	CLRF       GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,294 :: 		break;
	GOTO       L_GPIO_ReadPinValue103
;GPIO.c,295 :: 		}
L_GPIO_ReadPinValue102:
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PORT_ID+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue104
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PORT_ID+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue105
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PORT_ID+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue106
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PORT_ID+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue107
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PORT_ID+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue108
	GOTO       L_GPIO_ReadPinValue109
L_GPIO_ReadPinValue103:
;GPIO.c,296 :: 		if(GPIO_HIGH == GPIO_PinValue){
	MOVLW      1
	XORWF      GPIO_ReadPinValue_GPIO_PinValue_L0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue110
;GPIO.c,297 :: 		switch(GPIO_PIN_ID){
	GOTO       L_GPIO_ReadPinValue111
;GPIO.c,298 :: 		case GPIO_PIN0:
L_GPIO_ReadPinValue113:
;GPIO.c,299 :: 		if(PIN_HIGH == Pin_Value_Ptr->Pin0){
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	BTFSS      R0+0, 0
	GOTO       L_GPIO_ReadPinValue114
;GPIO.c,300 :: 		GPIO_PinValue = GPIO_HIGH;
	MOVLW      1
	MOVWF      GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,301 :: 		}else{
	GOTO       L_GPIO_ReadPinValue115
L_GPIO_ReadPinValue114:
;GPIO.c,302 :: 		GPIO_PinValue = GPIO_LOW;
	CLRF       GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,303 :: 		}
L_GPIO_ReadPinValue115:
;GPIO.c,304 :: 		break;
	GOTO       L_GPIO_ReadPinValue112
;GPIO.c,305 :: 		case GPIO_PIN1:
L_GPIO_ReadPinValue116:
;GPIO.c,306 :: 		if(PIN_HIGH == Pin_Value_Ptr->Pin1){
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	BTFSS      R0+0, 1
	GOTO       L_GPIO_ReadPinValue117
;GPIO.c,307 :: 		GPIO_PinValue = GPIO_HIGH;
	MOVLW      1
	MOVWF      GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,308 :: 		}else{
	GOTO       L_GPIO_ReadPinValue118
L_GPIO_ReadPinValue117:
;GPIO.c,309 :: 		GPIO_PinValue = GPIO_LOW;
	CLRF       GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,310 :: 		}
L_GPIO_ReadPinValue118:
;GPIO.c,311 :: 		break;
	GOTO       L_GPIO_ReadPinValue112
;GPIO.c,312 :: 		case GPIO_PIN2:
L_GPIO_ReadPinValue119:
;GPIO.c,313 :: 		if(PIN_HIGH == Pin_Value_Ptr->Pin2){
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	BTFSS      R0+0, 2
	GOTO       L_GPIO_ReadPinValue120
;GPIO.c,314 :: 		GPIO_PinValue = GPIO_HIGH;
	MOVLW      1
	MOVWF      GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,315 :: 		}else{
	GOTO       L_GPIO_ReadPinValue121
L_GPIO_ReadPinValue120:
;GPIO.c,316 :: 		GPIO_PinValue = GPIO_LOW;
	CLRF       GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,317 :: 		}
L_GPIO_ReadPinValue121:
;GPIO.c,318 :: 		break;
	GOTO       L_GPIO_ReadPinValue112
;GPIO.c,319 :: 		case GPIO_PIN3:
L_GPIO_ReadPinValue122:
;GPIO.c,320 :: 		if(PIN_HIGH == Pin_Value_Ptr->Pin3){
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	BTFSS      R0+0, 3
	GOTO       L_GPIO_ReadPinValue123
;GPIO.c,321 :: 		GPIO_PinValue = GPIO_HIGH;
	MOVLW      1
	MOVWF      GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,322 :: 		}else{
	GOTO       L_GPIO_ReadPinValue124
L_GPIO_ReadPinValue123:
;GPIO.c,323 :: 		GPIO_PinValue = GPIO_LOW;
	CLRF       GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,324 :: 		}
L_GPIO_ReadPinValue124:
;GPIO.c,325 :: 		break;
	GOTO       L_GPIO_ReadPinValue112
;GPIO.c,326 :: 		case GPIO_PIN4:
L_GPIO_ReadPinValue125:
;GPIO.c,327 :: 		if(PIN_HIGH == Pin_Value_Ptr->Pin4){
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	BTFSS      R0+0, 4
	GOTO       L_GPIO_ReadPinValue126
;GPIO.c,328 :: 		GPIO_PinValue = GPIO_HIGH;
	MOVLW      1
	MOVWF      GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,329 :: 		}else{
	GOTO       L_GPIO_ReadPinValue127
L_GPIO_ReadPinValue126:
;GPIO.c,330 :: 		GPIO_PinValue = GPIO_LOW;
	CLRF       GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,331 :: 		}
L_GPIO_ReadPinValue127:
;GPIO.c,332 :: 		break;
	GOTO       L_GPIO_ReadPinValue112
;GPIO.c,333 :: 		case GPIO_PIN5:
L_GPIO_ReadPinValue128:
;GPIO.c,334 :: 		if(PIN_HIGH == Pin_Value_Ptr->Pin5){
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	BTFSS      R0+0, 5
	GOTO       L_GPIO_ReadPinValue129
;GPIO.c,335 :: 		GPIO_PinValue = GPIO_HIGH;
	MOVLW      1
	MOVWF      GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,336 :: 		}else{
	GOTO       L_GPIO_ReadPinValue130
L_GPIO_ReadPinValue129:
;GPIO.c,337 :: 		GPIO_PinValue = GPIO_LOW;
	CLRF       GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,338 :: 		}
L_GPIO_ReadPinValue130:
;GPIO.c,339 :: 		break;
	GOTO       L_GPIO_ReadPinValue112
;GPIO.c,340 :: 		case GPIO_PIN6:
L_GPIO_ReadPinValue131:
;GPIO.c,341 :: 		if(PIN_HIGH == Pin_Value_Ptr->Pin6){
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	BTFSS      R0+0, 6
	GOTO       L_GPIO_ReadPinValue132
;GPIO.c,342 :: 		GPIO_PinValue = GPIO_HIGH;
	MOVLW      1
	MOVWF      GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,343 :: 		}else{
	GOTO       L_GPIO_ReadPinValue133
L_GPIO_ReadPinValue132:
;GPIO.c,344 :: 		GPIO_PinValue = GPIO_LOW;
	CLRF       GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,345 :: 		}
L_GPIO_ReadPinValue133:
;GPIO.c,346 :: 		break;
	GOTO       L_GPIO_ReadPinValue112
;GPIO.c,347 :: 		case GPIO_PIN7:
L_GPIO_ReadPinValue134:
;GPIO.c,348 :: 		if(PIN_HIGH == Pin_Value_Ptr->Pin7){
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	BTFSS      R0+0, 7
	GOTO       L_GPIO_ReadPinValue135
;GPIO.c,349 :: 		GPIO_PinValue = GPIO_HIGH;
	MOVLW      1
	MOVWF      GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,350 :: 		}else{
	GOTO       L_GPIO_ReadPinValue136
L_GPIO_ReadPinValue135:
;GPIO.c,351 :: 		GPIO_PinValue = GPIO_LOW;
	CLRF       GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,352 :: 		}
L_GPIO_ReadPinValue136:
;GPIO.c,353 :: 		break;
	GOTO       L_GPIO_ReadPinValue112
;GPIO.c,354 :: 		default:
L_GPIO_ReadPinValue137:
;GPIO.c,356 :: 		GPIO_PinValue = GPIO_LOW;
	CLRF       GPIO_ReadPinValue_GPIO_PinValue_L0+0
;GPIO.c,357 :: 		break;
	GOTO       L_GPIO_ReadPinValue112
;GPIO.c,358 :: 		}
L_GPIO_ReadPinValue111:
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PIN_ID+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue113
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PIN_ID+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue116
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PIN_ID+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue119
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PIN_ID+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue122
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PIN_ID+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue125
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PIN_ID+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue128
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PIN_ID+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue131
	MOVF       FARG_GPIO_ReadPinValue_GPIO_PIN_ID+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPinValue134
	GOTO       L_GPIO_ReadPinValue137
L_GPIO_ReadPinValue112:
;GPIO.c,359 :: 		}
L_GPIO_ReadPinValue110:
;GPIO.c,360 :: 		return GPIO_PinValue;
	MOVF       GPIO_ReadPinValue_GPIO_PinValue_L0+0, 0
	MOVWF      R0+0
;GPIO.c,361 :: 		}
L_end_GPIO_ReadPinValue:
	RETURN
; end of _GPIO_ReadPinValue

_GPIO_SetPortDirection:

;GPIO.c,364 :: 		const GPIO_Direction_t GPIO_PORT_DIRECTION){
;GPIO.c,367 :: 		switch(GPIO_PORT_ID){
	GOTO       L_GPIO_SetPortDirection138
;GPIO.c,368 :: 		case GPIO_PORTA:
L_GPIO_SetPortDirection140:
;GPIO.c,369 :: 		Port_Direction_Ptr = (volatile Port_Direction_State_t*)PORTA_DIRECTION_ADDRESS;
	MOVLW      133
	MOVWF      R1+0
;GPIO.c,370 :: 		break;
	GOTO       L_GPIO_SetPortDirection139
;GPIO.c,371 :: 		case GPIO_PORTB:
L_GPIO_SetPortDirection141:
;GPIO.c,372 :: 		Port_Direction_Ptr = (volatile Port_Direction_State_t*)PORTB_DIRECTION_ADDRESS;
	MOVLW      134
	MOVWF      R1+0
;GPIO.c,373 :: 		break;
	GOTO       L_GPIO_SetPortDirection139
;GPIO.c,374 :: 		case GPIO_PORTC:
L_GPIO_SetPortDirection142:
;GPIO.c,375 :: 		Port_Direction_Ptr = (volatile Port_Direction_State_t*)PORTC_DIRECTION_ADDRESS;
	MOVLW      135
	MOVWF      R1+0
;GPIO.c,376 :: 		break;
	GOTO       L_GPIO_SetPortDirection139
;GPIO.c,377 :: 		case GPIO_PORTD:
L_GPIO_SetPortDirection143:
;GPIO.c,378 :: 		Port_Direction_Ptr = (volatile Port_Direction_State_t*)PORTD_DIRECTION_ADDRESS;
	MOVLW      136
	MOVWF      R1+0
;GPIO.c,379 :: 		break;
	GOTO       L_GPIO_SetPortDirection139
;GPIO.c,380 :: 		case GPIO_PORTE:
L_GPIO_SetPortDirection144:
;GPIO.c,381 :: 		Port_Direction_Ptr = (volatile Port_Direction_State_t*)PORTE_DIRECTION_ADDRESS;
	MOVLW      137
	MOVWF      R1+0
;GPIO.c,382 :: 		break;
	GOTO       L_GPIO_SetPortDirection139
;GPIO.c,383 :: 		default:
L_GPIO_SetPortDirection145:
;GPIO.c,385 :: 		return;
	GOTO       L_end_GPIO_SetPortDirection
;GPIO.c,386 :: 		}
L_GPIO_SetPortDirection138:
	MOVF       FARG_GPIO_SetPortDirection_GPIO_PORT_ID+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection140
	MOVF       FARG_GPIO_SetPortDirection_GPIO_PORT_ID+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection141
	MOVF       FARG_GPIO_SetPortDirection_GPIO_PORT_ID+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection142
	MOVF       FARG_GPIO_SetPortDirection_GPIO_PORT_ID+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection143
	MOVF       FARG_GPIO_SetPortDirection_GPIO_PORT_ID+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection144
	GOTO       L_GPIO_SetPortDirection145
L_GPIO_SetPortDirection139:
;GPIO.c,387 :: 		if(GPIO_OUTPUT == GPIO_PORT_DIRECTION){
	MOVLW      0
	XORWF      FARG_GPIO_SetPortDirection_GPIO_PORT_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection146
;GPIO.c,388 :: 		*Port_Direction_Ptr = PORT_OUTPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	CLRF       INDF+0
;GPIO.c,389 :: 		}else if(GPIO_INPUT == GPIO_PORT_DIRECTION){
	GOTO       L_GPIO_SetPortDirection147
L_GPIO_SetPortDirection146:
	MOVLW      1
	XORWF      FARG_GPIO_SetPortDirection_GPIO_PORT_DIRECTION+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection148
;GPIO.c,390 :: 		*Port_Direction_Ptr = PORT_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVLW      255
	MOVWF      INDF+0
;GPIO.c,391 :: 		}else{
	GOTO       L_GPIO_SetPortDirection149
L_GPIO_SetPortDirection148:
;GPIO.c,393 :: 		*Port_Direction_Ptr = PORT_INPUT;
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVLW      255
	MOVWF      INDF+0
;GPIO.c,394 :: 		}
L_GPIO_SetPortDirection149:
L_GPIO_SetPortDirection147:
;GPIO.c,395 :: 		}
L_end_GPIO_SetPortDirection:
	RETURN
; end of _GPIO_SetPortDirection

_GPIO_SetPortValue:

;GPIO.c,398 :: 		const Word_Size_t GPIO_PORT_VLAUE){
;GPIO.c,401 :: 		switch(GPIO_PORT_ID){
	GOTO       L_GPIO_SetPortValue150
;GPIO.c,402 :: 		case GPIO_PORTA:
L_GPIO_SetPortValue152:
;GPIO.c,403 :: 		Port_Value_Ptr = (volatile Word_Size_t*)PORTA_WRITE_ADDRESS;
	MOVLW      5
	MOVWF      R1+0
;GPIO.c,404 :: 		break;
	GOTO       L_GPIO_SetPortValue151
;GPIO.c,405 :: 		case GPIO_PORTB:
L_GPIO_SetPortValue153:
;GPIO.c,406 :: 		Port_Value_Ptr = (volatile Word_Size_t*)PORTB_WRITE_ADDRESS;
	MOVLW      6
	MOVWF      R1+0
;GPIO.c,407 :: 		break;
	GOTO       L_GPIO_SetPortValue151
;GPIO.c,408 :: 		case GPIO_PORTC:
L_GPIO_SetPortValue154:
;GPIO.c,409 :: 		Port_Value_Ptr = (volatile Word_Size_t*)PORTC_WRITE_ADDRESS;
	MOVLW      7
	MOVWF      R1+0
;GPIO.c,410 :: 		break;
	GOTO       L_GPIO_SetPortValue151
;GPIO.c,411 :: 		case GPIO_PORTD:
L_GPIO_SetPortValue155:
;GPIO.c,412 :: 		Port_Value_Ptr = (volatile Word_Size_t*)PORTD_WRITE_ADDRESS;
	MOVLW      8
	MOVWF      R1+0
;GPIO.c,413 :: 		break;
	GOTO       L_GPIO_SetPortValue151
;GPIO.c,414 :: 		case GPIO_PORTE:
L_GPIO_SetPortValue156:
;GPIO.c,415 :: 		Port_Value_Ptr = (volatile Word_Size_t*)PORTE_WRITE_ADDRESS;
	MOVLW      9
	MOVWF      R1+0
;GPIO.c,416 :: 		break;
	GOTO       L_GPIO_SetPortValue151
;GPIO.c,417 :: 		default:
L_GPIO_SetPortValue157:
;GPIO.c,419 :: 		return;
	GOTO       L_end_GPIO_SetPortValue
;GPIO.c,420 :: 		}
L_GPIO_SetPortValue150:
	MOVF       FARG_GPIO_SetPortValue_GPIO_PORT_ID+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortValue152
	MOVF       FARG_GPIO_SetPortValue_GPIO_PORT_ID+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortValue153
	MOVF       FARG_GPIO_SetPortValue_GPIO_PORT_ID+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortValue154
	MOVF       FARG_GPIO_SetPortValue_GPIO_PORT_ID+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortValue155
	MOVF       FARG_GPIO_SetPortValue_GPIO_PORT_ID+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortValue156
	GOTO       L_GPIO_SetPortValue157
L_GPIO_SetPortValue151:
;GPIO.c,421 :: 		*Port_Value_Ptr = GPIO_PORT_VLAUE;
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       FARG_GPIO_SetPortValue_GPIO_PORT_VLAUE+0, 0
	MOVWF      INDF+0
;GPIO.c,422 :: 		}
L_end_GPIO_SetPortValue:
	RETURN
; end of _GPIO_SetPortValue

_GPIO_ReadPortValue:

;GPIO.c,424 :: 		Word_Size_t GPIO_ReadPortValue(const GPIO_Port_ID_t GPIO_PORT_ID){
;GPIO.c,426 :: 		switch(GPIO_PORT_ID){
	GOTO       L_GPIO_ReadPortValue158
;GPIO.c,427 :: 		case GPIO_PORTA:
L_GPIO_ReadPortValue160:
;GPIO.c,428 :: 		Port_Value_Ptr = (volatile Word_Size_t*)PORTA_READ_ADDRESS;
	MOVLW      5
	MOVWF      R1+0
;GPIO.c,429 :: 		break;
	GOTO       L_GPIO_ReadPortValue159
;GPIO.c,430 :: 		case GPIO_PORTB:
L_GPIO_ReadPortValue161:
;GPIO.c,431 :: 		Port_Value_Ptr = (volatile Word_Size_t*)PORTB_READ_ADDRESS;
	MOVLW      6
	MOVWF      R1+0
;GPIO.c,432 :: 		break;
	GOTO       L_GPIO_ReadPortValue159
;GPIO.c,433 :: 		case GPIO_PORTC:
L_GPIO_ReadPortValue162:
;GPIO.c,434 :: 		Port_Value_Ptr = (volatile Word_Size_t*)PORTC_READ_ADDRESS;
	MOVLW      7
	MOVWF      R1+0
;GPIO.c,435 :: 		break;
	GOTO       L_GPIO_ReadPortValue159
;GPIO.c,436 :: 		case GPIO_PORTD:
L_GPIO_ReadPortValue163:
;GPIO.c,437 :: 		Port_Value_Ptr = (volatile Word_Size_t*)PORTD_READ_ADDRESS;
	MOVLW      8
	MOVWF      R1+0
;GPIO.c,438 :: 		break;
	GOTO       L_GPIO_ReadPortValue159
;GPIO.c,439 :: 		case GPIO_PORTE:
L_GPIO_ReadPortValue164:
;GPIO.c,440 :: 		Port_Value_Ptr = (volatile Word_Size_t*)PORTE_READ_ADDRESS;
	MOVLW      9
	MOVWF      R1+0
;GPIO.c,441 :: 		break;
	GOTO       L_GPIO_ReadPortValue159
;GPIO.c,442 :: 		default:
L_GPIO_ReadPortValue165:
;GPIO.c,444 :: 		return PORT_ERROR;
	CLRF       R0+0
	GOTO       L_end_GPIO_ReadPortValue
;GPIO.c,445 :: 		}
L_GPIO_ReadPortValue158:
	MOVF       FARG_GPIO_ReadPortValue_GPIO_PORT_ID+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPortValue160
	MOVF       FARG_GPIO_ReadPortValue_GPIO_PORT_ID+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPortValue161
	MOVF       FARG_GPIO_ReadPortValue_GPIO_PORT_ID+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPortValue162
	MOVF       FARG_GPIO_ReadPortValue_GPIO_PORT_ID+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPortValue163
	MOVF       FARG_GPIO_ReadPortValue_GPIO_PORT_ID+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_ReadPortValue164
	GOTO       L_GPIO_ReadPortValue165
L_GPIO_ReadPortValue159:
;GPIO.c,446 :: 		return *Port_Value_Ptr;
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
;GPIO.c,447 :: 		}
L_end_GPIO_ReadPortValue:
	RETURN
; end of _GPIO_ReadPortValue
