LIST		p=16F887		; Tipo de microcontrolador
INCLUDE 	P16F887.INC		; Define los SFRs y bits P16F887

__CONFIG _CONFIG1, _CP_OFF&_WDT_OFF&_XT_OSC	
						; Ingresa parámetros de configuración
errorlevel	 -302			
			
; INICIO DEL PROGRAMA 

	ORG 	0x00			; Comienzo del programa (Vector de Reset)
	
; SETEO DE PUERTOS
	BANKSEL 	TRISA		; selecciona el banco conteniendo TRISA
	CLRF		TRISA		; puerto A configurado como salida
	BANKSEL	        ANSEL
	CLRF		ANSEL	              ; configura puertos con entradas digitales
	CLRF		ANSELH	              ; configura puertos con entradas digitales
	BANKSEL 	PORTA	              ; selecciona el puerto A como salida
	CLRF		PORTA
	
	
; DESARROLLO DEL PROGRAMA
;1
VALOR
	MOVLW	B'00111111' 		; mueve 0xAA al registro W
	MOVWF	PORTA			; pasa el valor al puerto A
	GOTO		VALOR


    END











