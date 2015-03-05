/************************************************************************
* 	Scrolling Display with 10X8 LED Matrix
* 	File:   main.c
* 	Author:  OpenSourceCodeRepo
*   Rev. 0.0.1 : 
* 
*	This program is free software: you can redistribute it and/or modify
*  	it under the terms of the GNU General Public License as published by
*  	the Free Software Foundation, either version 3 of the License, or
*	(at your option) any later version.
*
*	This program is distributed in the hope that it will be useful,
*	but WITHOUT ANY WARRANTY; without even the implied warranty of
*	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*	GNU General Public License for more details.
*
*	You should have received a copy of the GNU General Public License
*	along with this program.  If not, see <http://www.gnu.org/licenses/>.
*
*	Email: opensourcecoderepo@gmail.com
*   
************************************************************************/

#include<pic.h>
#define _XTAL_FREQ 4e6
__CONFIG(0x001);

char array[10], p, j, s, i, still;
extern const char font_5x7[97][5];

void clock()
{ 
	RC1 = 1;
	__delay_us(100);
	RC1 = 0;
}

void reset()
{
	RC2 = 1;
	__delay_us(100);
	RC2 = 0;
}

void scroll(char a, char b, char c, char d, char e)
{
    short int count = 6;
    
	while(count > 0) {
        array[0] = a;
        a = b;
		b = c;
		c = d;
		d = e;
		e = 0;
        reset();
        
		for(s = 0;s < still; s++) {
            for(i = 0; i  < 10; i++) {
                p = 1;
                for(j = 0;j < 9;j++) {
                    PORTB = ~(array[i]&(p));
					__delay_ms(.05);
					PORTB = ~(array[i]&(p));
					__delay_ms(.05);
					p <<= 1;
                }
                clock();
            }
        }
        for(i = 9; i > 0; i--) {
            array[i] = array[i-1];
        }
        count--;
    }
}

void printf(const char *p)
{
    while(*p) {
        scroll(font_5x7[*p-' '][0], font_5x7[*p-' '][1], font_5x7[*p-' '][2], font_5x7[*p-' '][3], font_5x7[*p-' '][4]);
        p++;
    }
}


void main()
{
    TRISB	= 0;
    TRISC1	= 0;
    TRISC2	= 0;
    still	= 7; /* Scrolling Speed Control */
    while(1) {
		printf("Your Text Here!");
      }
}

