;**** FIL OPLYSNINGER *******************************************************************
;	Fil:		SW -> LED
;   Dato:		19/11 2018
;	forfatter:	Steen Heide
; **** BESKRIVELSE ********************************************************************
;   Dette program anvendes til at teste ICSPen på PIC16F684
;	aktiverer mindst 1 LED når en kontakt aktiveres
; **** forbindelse af ICSP *******************  forbindelse af kredsløb *************
;	Programmet forventes uploadet med en PICkit2 
;	eller en PICkit3 pilen på PICkit angiver pin1 
;	Navn		PICkit	PIC16F684					
;	VPP/MCLR	1		4		Masterclear
;	VDD/TARGET	2		1		Positiv forsyning
;	VSS/GND		3		14		GND, Earth, Stel
;	ICSPDAT		4		13		Programmerings data
;	ICSPCLK		5		12		Programmerings Clock
;	SWITCH				PortA,2	(pin11)
;	Led					PortC,0 (pin10)	
;   PWM ud			 	PortC,5 (pin 5)
;	Analog ind			PortC,3 (pin 7) AN7

;CMCON0 equ 0x19h
;T2CON equ 0x12h
;CCP1CON equ 0x15h
;ADCON0 equ 0x1fh
;TRISC equ 0x87H
;ANSEL equ 0x91h
;PR2 equ 0x92h
;TRISA equ 0x85h

; ***** INITIALISERING AF CONTROLER **************************************************
INIT:
	movlw	b'00000101'
	movwf	CMCON0
	movlw	b'00000111'
	movwf	T2CON
	movlw	b'00001100'
	movwf	CCP1CON
	movlw	b'00011001'
	movwf	ADCON0
	banksel TRISC
	movlw	b'00010000'
	movwf	ADCON1
	movlw	b'01110100'
	movwf	ANSEL
	movlw	b'11111111'
	movwf	PR2
	movlw	b'00000111'
	movwf	TRISC
	movlw	b'00001100'
	movwf	TRISA
	banksel PORTC
	BCF		PORTC,3
; ***** Opsætining af ind og udgange *************************************************

; ***** Opsætning af Analog til Digital converterenADC and PWM configuration  ********

; ***** hovedprogram læser ADværdier (PWM) og checker afvigelse>10step fra start ******
loop:
    BTFSC	CMCON0,7
    BSF		PORTC,3
    BTFSS	CMCON0,7
    BCF		PORTC,3
    call	readAccel
    GOTO	loop


; ***** Procedurer der anvendes i programmet  ******************************************

; ***** Analog til Digital konvertering ***********************************************

readAccel:
	btfss ADCON1, 1
	goto readData
	return
readData:
	movfw ADRESH
	bsf ADCON1, 1
	return
	
 end


