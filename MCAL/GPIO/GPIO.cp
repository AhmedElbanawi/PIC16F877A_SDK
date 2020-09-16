#line 1 "C:/Users/elmaystero/Desktop/SDK/MCAL/GPIO/GPIO.c"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/memory/memory.h"
#line 1 "c:/users/elmaystero/desktop/sdk/mcal/gpio/gpio.h"
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
#line 14 "c:/users/elmaystero/desktop/sdk/mcal/gpio/gpio.h"
typedef enum{
 GPIO_PORTA = 0X0A,
 GPIO_PORTB,
 GPIO_PORTC,
 GPIO_PORTD,
 GPIO_PORTE,
 GPIO_NO_OF_PORTS
}GPIO_Port_ID_t;
typedef enum{
 GPIO_PIN0 = 0,
 GPIO_PIN1,
 GPIO_PIN2,
 GPIO_PIN3,
 GPIO_PIN4,
 GPIO_PIN5,
 GPIO_PIN6,
 GPIO_PIN7,
 GPIO_NO_OF_PINS
}GPIO_Pin_ID_t;
typedef enum{
 GPIO_OUTPUT = 0,
 GPIO_INPUT
}GPIO_Direction_t;
typedef enum{
 GPIO_LOW = 0,
 GPIO_HIGH
}GPIO_PinValue_t;

void GPIO_SetPinDirection(const GPIO_Port_ID_t GPIO_PORT_ID,
 const GPIO_Pin_ID_t GPIO_PIN_ID,
 const GPIO_Direction_t GPIO_PIN_DIRECTION);

void GPIO_SetPinValue(const GPIO_Port_ID_t GPIO_PORT_ID,
 const GPIO_Pin_ID_t GPIO_PIN_ID,
 const GPIO_PinValue_t GPIO_PIN_VALUE);

GPIO_PinValue_t GPIO_ReadPinValue(const GPIO_Port_ID_t GPIO_PORT_ID,
 const GPIO_Pin_ID_t GPIO_PIN_ID);

void GPIO_SetPortDirection(const GPIO_Port_ID_t GPIO_PORT_ID,
 const GPIO_Direction_t GPIO_PORT_DIRECTION);

void GPIO_SetPortValue(const GPIO_Port_ID_t GPIO_PORT_ID,
 const Word_Size_t GPIO_PORT_VLAUE);

Word_Size_t GPIO_ReadPortValue(const GPIO_Port_ID_t GPIO_PORT_ID);
#line 13 "C:/Users/elmaystero/Desktop/SDK/MCAL/GPIO/GPIO.c"
typedef enum{
 PIN_OUTPUT = 0,
 PIN_INPUT
}Pin_Direction_State_t;
typedef enum{
 PIN_LOW = 0,
 PIN_HIGH
}Pin_Value_State_t;
typedef enum{
 PORT_OUTPUT = 0X00,
 PORT_INPUT = 0XFF
}Port_Direction_State_t;
typedef struct{
 Pin_Direction_State_t Pin0 : 1;
 Pin_Direction_State_t Pin1 : 1;
 Pin_Direction_State_t Pin2 : 1;
 Pin_Direction_State_t Pin3 : 1;
 Pin_Direction_State_t Pin4 : 1;
 Pin_Direction_State_t Pin5 : 1;
 Pin_Direction_State_t Pin6 : 1;
 Pin_Direction_State_t Pin7 : 1;
}Pin_Direction_t;
typedef struct{
 Pin_Value_State_t Pin0 : 1;
 Pin_Value_State_t Pin1 : 1;
 Pin_Value_State_t Pin2 : 1;
 Pin_Value_State_t Pin3 : 1;
 Pin_Value_State_t Pin4 : 1;
 Pin_Value_State_t Pin5 : 1;
 Pin_Value_State_t Pin6 : 1;
 Pin_Value_State_t Pin7 : 1;
}Pin_Value_t;

void GPIO_SetPinDirection(const GPIO_Port_ID_t GPIO_PORT_ID,
 const GPIO_Pin_ID_t GPIO_PIN_ID,
 const GPIO_Direction_t GPIO_PIN_DIRECTION){

 volatile Pin_Direction_t* Pin_Direction_Ptr;
 switch(GPIO_PORT_ID){
 case GPIO_PORTA:
 Pin_Direction_Ptr = (volatile Pin_Direction_t*) 0X85 ;
 break;
 case GPIO_PORTB:
 Pin_Direction_Ptr = (volatile Pin_Direction_t*) 0X86 ;
 break;
 case GPIO_PORTC:
 Pin_Direction_Ptr = (volatile Pin_Direction_t*) 0X87 ;
 break;
 case GPIO_PORTD:
 Pin_Direction_Ptr = (volatile Pin_Direction_t*) 0X88 ;
 break;
 case GPIO_PORTE:
 Pin_Direction_Ptr = (volatile Pin_Direction_t*) 0X89 ;
 break;
 default:

 return;
 }
 switch(GPIO_PIN_ID){
 case GPIO_PIN0:
 if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin0 = PIN_OUTPUT;
 }else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin0 = PIN_INPUT;
 }else{

 Pin_Direction_Ptr->Pin0 = PIN_INPUT;
 }
 break;
 case GPIO_PIN1:
 if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin1 = PIN_OUTPUT;
 }else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin1 = PIN_INPUT;
 }else{

 Pin_Direction_Ptr->Pin1 = PIN_INPUT;
 }
 break;
 case GPIO_PIN2:
 if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin2 = PIN_OUTPUT;
 }else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin2 = PIN_INPUT;
 }else{

 Pin_Direction_Ptr->Pin2 = PIN_INPUT;
 }
 break;
 case GPIO_PIN3:
 if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin3 = PIN_OUTPUT;
 }else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin3 = PIN_INPUT;
 }else{

 Pin_Direction_Ptr->Pin3 = PIN_INPUT;
 }
 break;
 case GPIO_PIN4:
 if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin4 = PIN_OUTPUT;
 }else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin4 = PIN_INPUT;
 }else{

 Pin_Direction_Ptr->Pin4 = PIN_INPUT;
 }
 break;
 case GPIO_PIN5:
 if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin5 = PIN_OUTPUT;
 }else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin5 = PIN_INPUT;
 }else{

 Pin_Direction_Ptr->Pin5 = PIN_INPUT;
 }
 break;
 case GPIO_PIN6:
 if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin6 = PIN_OUTPUT;
 }else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin6 = PIN_INPUT;
 }else{

 Pin_Direction_Ptr->Pin6 = PIN_INPUT;
 }
 break;
 case GPIO_PIN7:
 if(GPIO_OUTPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin7 = PIN_OUTPUT;
 }else if(GPIO_INPUT == GPIO_PIN_DIRECTION){
 Pin_Direction_Ptr->Pin7 = PIN_INPUT;
 }else{

 Pin_Direction_Ptr->Pin7 = PIN_INPUT;
 }
 break;
 default:

 break;
 }
}

void GPIO_SetPinValue(const GPIO_Port_ID_t GPIO_PORT_ID,
 const GPIO_Pin_ID_t GPIO_PIN_ID,
 const GPIO_PinValue_t GPIO_PIN_VALUE){

 volatile Pin_Value_t* Pin_Value_Ptr;
 switch(GPIO_PORT_ID){
 case GPIO_PORTA:
 Pin_Value_Ptr = (volatile Pin_Value_t*) 0X05 ;
 break;
 case GPIO_PORTB:
 Pin_Value_Ptr = (volatile Pin_Value_t*) 0X06 ;
 break;
 case GPIO_PORTC:
 Pin_Value_Ptr = (volatile Pin_Value_t*) 0X07 ;
 break;
 case GPIO_PORTD:
 Pin_Value_Ptr = (volatile Pin_Value_t*) 0X08 ;
 break;
 case GPIO_PORTE:
 Pin_Value_Ptr = (volatile Pin_Value_t*) 0X09 ;
 break;
 default:

 return;
 }
 switch(GPIO_PIN_ID){
 case GPIO_PIN0:
 if(GPIO_HIGH == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin0 = PIN_HIGH;
 }else if(GPIO_LOW == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin0 = PIN_LOW;
 }else{

 Pin_Value_Ptr->Pin0 = PIN_LOW;
 }
 break;
 case GPIO_PIN1:
 if(GPIO_HIGH == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin1 = PIN_HIGH;
 }else if(GPIO_LOW == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin1 = PIN_LOW;
 }else{

 Pin_Value_Ptr->Pin1 = PIN_LOW;
 }
 break;
 case GPIO_PIN2:
 if(GPIO_HIGH == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin2 = PIN_HIGH;
 }else if(GPIO_LOW == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin2 = PIN_LOW;
 }else{

 Pin_Value_Ptr->Pin2 = PIN_LOW;
 }
 break;
 case GPIO_PIN3:
 if(GPIO_HIGH == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin3 = PIN_HIGH;
 }else if(GPIO_LOW == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin3 = PIN_LOW;
 }else{

 Pin_Value_Ptr->Pin3 = PIN_LOW;
 }
 break;
 case GPIO_PIN4:
 if(GPIO_HIGH == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin4 = PIN_HIGH;
 }else if(GPIO_LOW == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin4 = PIN_LOW;
 }else{

 Pin_Value_Ptr->Pin4 = PIN_LOW;
 }
 break;
 case GPIO_PIN5:
 if(GPIO_HIGH == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin5 = PIN_HIGH;
 }else if(GPIO_LOW == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin5 = PIN_LOW;
 }else{

 Pin_Value_Ptr->Pin5 = PIN_LOW;
 }
 break;
 case GPIO_PIN6:
 if(GPIO_HIGH == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin6 = PIN_HIGH;
 }else if(GPIO_LOW == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin6 = PIN_LOW;
 }else{

 Pin_Value_Ptr->Pin6 = PIN_LOW;
 }
 break;
 case GPIO_PIN7:
 if(GPIO_HIGH == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin7 = PIN_HIGH;
 }else if(GPIO_LOW == GPIO_PIN_VALUE){
 Pin_Value_Ptr->Pin7 = PIN_LOW;
 }else{

 Pin_Value_Ptr->Pin7 = PIN_LOW;
 }
 break;
 default:

 break;
 }
}

GPIO_PinValue_t GPIO_ReadPinValue(const GPIO_Port_ID_t GPIO_PORT_ID,
 const GPIO_Pin_ID_t GPIO_PIN_ID){

 volatile Pin_Value_t* Pin_Value_Ptr;
 GPIO_PinValue_t GPIO_PinValue = GPIO_HIGH;
 switch(GPIO_PORT_ID){
 case GPIO_PORTA:
 Pin_Value_Ptr = (volatile Pin_Value_t*) 0X05 ;
 break;
 case GPIO_PORTB:
 Pin_Value_Ptr = (volatile Pin_Value_t*) 0X06 ;
 break;
 case GPIO_PORTC:
 Pin_Value_Ptr = (volatile Pin_Value_t*) 0X07 ;
 break;
 case GPIO_PORTD:
 Pin_Value_Ptr = (volatile Pin_Value_t*) 0X08 ;
 break;
 case GPIO_PORTE:
 Pin_Value_Ptr = (volatile Pin_Value_t*) 0X09 ;
 break;
 default:

 GPIO_PinValue = GPIO_LOW;
 break;
 }
 if(GPIO_HIGH == GPIO_PinValue){
 switch(GPIO_PIN_ID){
 case GPIO_PIN0:
 if(PIN_HIGH == Pin_Value_Ptr->Pin0){
 GPIO_PinValue = GPIO_HIGH;
 }else{
 GPIO_PinValue = GPIO_LOW;
 }
 break;
 case GPIO_PIN1:
 if(PIN_HIGH == Pin_Value_Ptr->Pin1){
 GPIO_PinValue = GPIO_HIGH;
 }else{
 GPIO_PinValue = GPIO_LOW;
 }
 break;
 case GPIO_PIN2:
 if(PIN_HIGH == Pin_Value_Ptr->Pin2){
 GPIO_PinValue = GPIO_HIGH;
 }else{
 GPIO_PinValue = GPIO_LOW;
 }
 break;
 case GPIO_PIN3:
 if(PIN_HIGH == Pin_Value_Ptr->Pin3){
 GPIO_PinValue = GPIO_HIGH;
 }else{
 GPIO_PinValue = GPIO_LOW;
 }
 break;
 case GPIO_PIN4:
 if(PIN_HIGH == Pin_Value_Ptr->Pin4){
 GPIO_PinValue = GPIO_HIGH;
 }else{
 GPIO_PinValue = GPIO_LOW;
 }
 break;
 case GPIO_PIN5:
 if(PIN_HIGH == Pin_Value_Ptr->Pin5){
 GPIO_PinValue = GPIO_HIGH;
 }else{
 GPIO_PinValue = GPIO_LOW;
 }
 break;
 case GPIO_PIN6:
 if(PIN_HIGH == Pin_Value_Ptr->Pin6){
 GPIO_PinValue = GPIO_HIGH;
 }else{
 GPIO_PinValue = GPIO_LOW;
 }
 break;
 case GPIO_PIN7:
 if(PIN_HIGH == Pin_Value_Ptr->Pin7){
 GPIO_PinValue = GPIO_HIGH;
 }else{
 GPIO_PinValue = GPIO_LOW;
 }
 break;
 default:

 GPIO_PinValue = GPIO_LOW;
 break;
 }
 }
 return GPIO_PinValue;
}

void GPIO_SetPortDirection(const GPIO_Port_ID_t GPIO_PORT_ID,
 const GPIO_Direction_t GPIO_PORT_DIRECTION){

 volatile Port_Direction_State_t* Port_Direction_Ptr;
 switch(GPIO_PORT_ID){
 case GPIO_PORTA:
 Port_Direction_Ptr = (volatile Port_Direction_State_t*) 0X85 ;
 break;
 case GPIO_PORTB:
 Port_Direction_Ptr = (volatile Port_Direction_State_t*) 0X86 ;
 break;
 case GPIO_PORTC:
 Port_Direction_Ptr = (volatile Port_Direction_State_t*) 0X87 ;
 break;
 case GPIO_PORTD:
 Port_Direction_Ptr = (volatile Port_Direction_State_t*) 0X88 ;
 break;
 case GPIO_PORTE:
 Port_Direction_Ptr = (volatile Port_Direction_State_t*) 0X89 ;
 break;
 default:

 return;
 }
 if(GPIO_OUTPUT == GPIO_PORT_DIRECTION){
 *Port_Direction_Ptr = PORT_OUTPUT;
 }else if(GPIO_INPUT == GPIO_PORT_DIRECTION){
 *Port_Direction_Ptr = PORT_INPUT;
 }else{

 *Port_Direction_Ptr = PORT_INPUT;
 }
}

void GPIO_SetPortValue(const GPIO_Port_ID_t GPIO_PORT_ID,
 const Word_Size_t GPIO_PORT_VLAUE){

 volatile Word_Size_t* Port_Value_Ptr;
 switch(GPIO_PORT_ID){
 case GPIO_PORTA:
 Port_Value_Ptr = (volatile Word_Size_t*) 0X05 ;
 break;
 case GPIO_PORTB:
 Port_Value_Ptr = (volatile Word_Size_t*) 0X06 ;
 break;
 case GPIO_PORTC:
 Port_Value_Ptr = (volatile Word_Size_t*) 0X07 ;
 break;
 case GPIO_PORTD:
 Port_Value_Ptr = (volatile Word_Size_t*) 0X08 ;
 break;
 case GPIO_PORTE:
 Port_Value_Ptr = (volatile Word_Size_t*) 0X09 ;
 break;
 default:

 return;
 }
 *Port_Value_Ptr = GPIO_PORT_VLAUE;
}

Word_Size_t GPIO_ReadPortValue(const GPIO_Port_ID_t GPIO_PORT_ID){
 volatile Word_Size_t* Port_Value_Ptr;
 switch(GPIO_PORT_ID){
 case GPIO_PORTA:
 Port_Value_Ptr = (volatile Word_Size_t*) 0X05 ;
 break;
 case GPIO_PORTB:
 Port_Value_Ptr = (volatile Word_Size_t*) 0X06 ;
 break;
 case GPIO_PORTC:
 Port_Value_Ptr = (volatile Word_Size_t*) 0X07 ;
 break;
 case GPIO_PORTD:
 Port_Value_Ptr = (volatile Word_Size_t*) 0X08 ;
 break;
 case GPIO_PORTE:
 Port_Value_Ptr = (volatile Word_Size_t*) 0X09 ;
 break;
 default:

 return  0X00 ;
 }
 return *Port_Value_Ptr;
}
