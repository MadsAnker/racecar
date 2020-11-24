/*
 * File:   main.c
 * Author: mads
 *
 * Created on November 23, 2020, 3:20 PM
 */


#include <xc.h>
#include <stdint.h>

void readAccel(void);
volatile uint16_t xaccel, centri, xspeed, xpos;
int currentAxis = 0;

void __interrupt () isr(void) {
    if (INTCON & 0b00000100) {
        if (currentAxis == 0) {
            PORTC = 0b00001000;
            currentAxis = 1;
        } else {
            PORTC = 0b00000000;
            currentAxis = 0;
        }
        INTCON &= 0b11111011;
    }
}



void main(void) {
    TRISC3 = 0;
    TRISC2 = 1;
    TRISC5 = 0;
    TRISA2 = 1;
    //Comparator setup
    CMCON0 = 0b00000101;
    //Set analog input pins
    ANSEL = 0b01110100;
    //A->D converter settings
    ADCON0 = 0b00011011;
    ADCON1 = 0b00010000;
    //PWM
    CCP1CON = 0b00001100;
    T2CON = 0b00000111;
    PR2 = 0b01100011;
    INTCON = 0b11100000;
    OPTION_REG = 0b00000111;
    while (1) {
    }
}

void readAccel(void) {
    if ((ADCON0 & 0b00000010) == 0) {
        if (currentAxis == 0) {
            xaccel = ADRESH;
            ADCON0 = 0b00001011;
            currentAxis = 1;
        } else {
            centri = ADRESH;
            currentAxis = 0;
            ADCON0 = 0b00011011;
        }
    }
}


