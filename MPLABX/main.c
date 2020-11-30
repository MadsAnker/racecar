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
    if (PIR1 & 0b00000001) {
        if (currentAxis == 0) {
            PORTC = 0b00001000;
            currentAxis = 1;
        } else {
            PORTC = 0b00000000;
            currentAxis = 0;
        }
        PIR1 = (PIR1 & 0b11111110);
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
    CCPR1L = 0b00100000;
    T2CON = 0b00000111;
    PR2 = 0b00000000;
    //Interrupts
    INTCON = 0b11000000;
    T1CON = 0b001100001;
    PIE1 = 0b00000001;
    //  PORTC = 0b00001000;
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


