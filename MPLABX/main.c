/*
 * File:   main.c
 * Author: mads
 *
 * Created on November 23, 2020, 3:20 PM
 */


#include <xc.h>
#include <stdint.h>

#pragma config FOSC = HS  // Oscillator Selection bits (EXTRC oscillator: External RC on RA5/OSC1/CLKIN, CLKOUT function on RA4/OSC2/CLKOUT pin)
#pragma config WDTE = OFF        // TURN THIS SHIT OFF.
#pragma config FCMEN = ON      // Fail-Safe Clock Monitor Enabled bit (Fail-Safe Clock Monitor is disabled)

void readAccel(void);
volatile int16_t xaccel, centri, xspeed, xpos;
int currentAxis = 0;

void __interrupt () isr(void) {
    if (INTCON & 0b00000100) {
        if (currentAxis == 0) {
            PORTC = 0b00001000;
        } else {
            PORTC = 0b00000000;
        }
        INTCON = (INTCON & 0b11111011);
        readAccel();
    }
}

void main(void) {
    TRISC3 = 0;
    TRISC2 = 1;
    TRISC5 = 0;
    TRISA2 = 1;
    OSCCON = 0b01110001;
    //Comparator setup
    CMCON0 = 0b00000101;
    //Set analog input pins
    ANSEL = 0b01110100;
    //A->D converter settings
    ADCON0 = 0b00011011;
    ADCON1 = 0b00010000;
    //PWM
    CCP1CON = 0b00001100;
    CCPR1L = 0b00100000;
    T2CON = 0b00000111;
    PR2 = 0b00000000;
    //Interrupts
    INTCON = 0b10100000; //Enable global interrupts and T0 interrupt
    OPTION_REG = 0b00000110; //Set T0 prescalar
    while (1) {
        
    }
}


void readAccel(void) {
    if ((ADCON0 & 0b00000010) == 0) {
        if (currentAxis == 0) {
            xaccel = ADRESH << 2;
            xaccel = xaccel & (ADRESL >> 6);
            xaccel = xaccel - 327;
            ADCON0 = 0b00001011; //Switch AD-converter to y axis
            currentAxis = 1;
        } else {
            centri = ADRESH;
            currentAxis = 0;
            ADCON0 = 0b00011011; //Switch AD-converter to x axis
        }
    }
    return;
}



