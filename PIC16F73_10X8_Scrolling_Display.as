opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F73
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 26 "D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 26 "D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
	dw 0x001 ;#
;BANK0:	_main->_printf
;BANK0:	_printf->_scroll
;BANK0:	_scroll->___wmul
	FNCALL	_main,_printf
	FNCALL	_printf,___wmul
	FNCALL	_printf,_scroll
	FNCALL	_scroll,_reset
	FNCALL	_scroll,_clock
	FNROOT	_main
	global	_font_5x7
psect	strings,class=CODE,delta=2,reloc=256
global __pstrings
__pstrings:
	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	movwf	(btemp)&07Fh
	btfss	(btemp)&07Fh,7
	goto	stringcode
	bcf	status,7
	btfsc	btemp&7Fh,0
	bsf	status,7
	movf	indf,w
	return
stringcode:
	movwf	pclath
	movf	fsr,w
stringdir:
	movwf pc
__stringbase:
psect	stringtext1,class=CODE,delta=2
global __pstringtext1
__pstringtext1:
	file	"D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\font_5X7_new.c"
	line	24
_font_5x7:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	05Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	07h
	retlw	0
	retlw	07h
	retlw	0
	retlw	014h
	retlw	07Fh
	retlw	014h
	retlw	07Fh
	retlw	014h
	retlw	024h
	retlw	02Ah
	retlw	07Fh
	retlw	02Ah
	retlw	012h
	retlw	023h
	retlw	013h
	retlw	08h
	retlw	064h
	retlw	062h
	retlw	036h
	retlw	049h
	retlw	055h
	retlw	022h
	retlw	050h
	retlw	0
	retlw	05h
	retlw	03h
	retlw	0
	retlw	0
	retlw	0
	retlw	01Ch
	retlw	022h
	retlw	041h
	retlw	0
	retlw	0
	retlw	041h
	retlw	022h
	retlw	01Ch
	retlw	0
	retlw	08h
	retlw	02Ah
	retlw	01Ch
	retlw	02Ah
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	03Eh
	retlw	08h
	retlw	08h
	retlw	0
	retlw	050h
	retlw	030h
	retlw	0
	retlw	0
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	060h
	retlw	060h
	retlw	0
	retlw	0
	retlw	020h
	retlw	010h
	retlw	08h
	retlw	04h
	retlw	02h
	retlw	03Eh
	retlw	051h
	retlw	049h
	retlw	045h
	retlw	03Eh
	retlw	0
	retlw	042h
	retlw	07Fh
	retlw	040h
	retlw	0
	retlw	042h
	retlw	061h
	retlw	051h
	retlw	049h
	retlw	046h
	retlw	021h
	retlw	041h
	retlw	045h
	retlw	04Bh
	retlw	031h
	retlw	018h
	retlw	014h
	retlw	012h
	retlw	07Fh
	retlw	010h
	retlw	027h
	retlw	045h
	retlw	045h
	retlw	045h
	retlw	039h
	retlw	03Ch
	retlw	04Ah
	retlw	049h
	retlw	049h
	retlw	030h
	retlw	01h
	retlw	071h
	retlw	09h
	retlw	05h
	retlw	03h
	retlw	036h
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	036h
	retlw	06h
	retlw	049h
	retlw	049h
	retlw	029h
	retlw	01Eh
	retlw	0
	retlw	036h
	retlw	036h
	retlw	0
	retlw	0
	retlw	0
	retlw	056h
	retlw	036h
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	014h
	retlw	022h
	retlw	041h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	041h
	retlw	022h
	retlw	014h
	retlw	08h
	retlw	0
	retlw	02h
	retlw	01h
	retlw	051h
	retlw	09h
	retlw	06h
	retlw	032h
	retlw	049h
	retlw	079h
	retlw	041h
	retlw	03Eh
	retlw	07Eh
	retlw	011h
	retlw	011h
	retlw	011h
	retlw	07Eh
	retlw	07Fh
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	036h
	retlw	03Eh
	retlw	041h
	retlw	041h
	retlw	041h
	retlw	022h
	retlw	07Fh
	retlw	041h
	retlw	041h
	retlw	022h
	retlw	01Ch
	retlw	07Fh
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	041h
	retlw	07Fh
	retlw	09h
	retlw	09h
	retlw	01h
	retlw	01h
	retlw	03Eh
	retlw	041h
	retlw	041h
	retlw	051h
	retlw	032h
	retlw	07Fh
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	07Fh
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	041h
	retlw	0
	retlw	020h
	retlw	040h
	retlw	041h
	retlw	03Fh
	retlw	01h
	retlw	07Fh
	retlw	08h
	retlw	014h
	retlw	022h
	retlw	041h
	retlw	07Fh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	07Fh
	retlw	02h
	retlw	04h
	retlw	02h
	retlw	07Fh
	retlw	07Fh
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	07Fh
	retlw	03Eh
	retlw	041h
	retlw	041h
	retlw	041h
	retlw	03Eh
	retlw	07Fh
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	06h
	retlw	03Eh
	retlw	041h
	retlw	051h
	retlw	021h
	retlw	05Eh
	retlw	07Fh
	retlw	09h
	retlw	019h
	retlw	029h
	retlw	046h
	retlw	046h
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	031h
	retlw	01h
	retlw	01h
	retlw	07Fh
	retlw	01h
	retlw	01h
	retlw	03Fh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	03Fh
	retlw	01Fh
	retlw	020h
	retlw	040h
	retlw	020h
	retlw	01Fh
	retlw	07Fh
	retlw	020h
	retlw	018h
	retlw	020h
	retlw	07Fh
	retlw	063h
	retlw	014h
	retlw	08h
	retlw	014h
	retlw	063h
	retlw	03h
	retlw	04h
	retlw	078h
	retlw	04h
	retlw	03h
	retlw	061h
	retlw	051h
	retlw	049h
	retlw	045h
	retlw	043h
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	041h
	retlw	041h
	retlw	02h
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	020h
	retlw	041h
	retlw	041h
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	04h
	retlw	02h
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	0
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	0
	retlw	020h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	078h
	retlw	07Fh
	retlw	048h
	retlw	044h
	retlw	044h
	retlw	038h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	020h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	048h
	retlw	07Fh
	retlw	038h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	018h
	retlw	08h
	retlw	07Eh
	retlw	09h
	retlw	01h
	retlw	02h
	retlw	08h
	retlw	014h
	retlw	054h
	retlw	054h
	retlw	03Ch
	retlw	07Fh
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	078h
	retlw	0
	retlw	044h
	retlw	07Dh
	retlw	040h
	retlw	0
	retlw	020h
	retlw	040h
	retlw	044h
	retlw	03Dh
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	010h
	retlw	028h
	retlw	044h
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	040h
	retlw	0
	retlw	07Ch
	retlw	04h
	retlw	018h
	retlw	04h
	retlw	078h
	retlw	07Ch
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	078h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	038h
	retlw	07Ch
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	08h
	retlw	08h
	retlw	014h
	retlw	014h
	retlw	018h
	retlw	07Ch
	retlw	07Ch
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	08h
	retlw	048h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	020h
	retlw	04h
	retlw	03Fh
	retlw	044h
	retlw	040h
	retlw	020h
	retlw	03Ch
	retlw	040h
	retlw	040h
	retlw	020h
	retlw	07Ch
	retlw	01Ch
	retlw	020h
	retlw	040h
	retlw	020h
	retlw	01Ch
	retlw	03Ch
	retlw	040h
	retlw	030h
	retlw	040h
	retlw	03Ch
	retlw	044h
	retlw	028h
	retlw	010h
	retlw	028h
	retlw	044h
	retlw	0Ch
	retlw	050h
	retlw	050h
	retlw	050h
	retlw	03Ch
	retlw	044h
	retlw	064h
	retlw	054h
	retlw	04Ch
	retlw	044h
	retlw	0
	retlw	08h
	retlw	036h
	retlw	041h
	retlw	0
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	041h
	retlw	036h
	retlw	08h
	retlw	0
	retlw	08h
	retlw	08h
	retlw	02Ah
	retlw	01Ch
	retlw	08h
	retlw	08h
	retlw	01Ch
	retlw	02Ah
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_font_5x7
	global	_array
	global	_i
	global	_j
	global	_p
	global	_s
	global	_still
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_still:
       ds      1

	global	_ADCON0
_ADCON0  equ     31
	global	_ADRES
_ADRES  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADGO
_ADGO  equ     250
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP1X
_CCP1X  equ     189
	global	_CCP1Y
_CCP1Y  equ     188
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     251
	global	_CHS1
_CHS1  equ     252
	global	_CHS2
_CHS2  equ     253
	global	_CKP
_CKP  equ     164
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     250
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR0IE
_TMR0IE  equ     93
	global	_TMR0IF
_TMR0IF  equ     90
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_OPTION
_OPTION  equ     129
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_SPBRG
_SPBRG  equ     153
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TXSTA
_TXSTA  equ     152
	global	_ADIE
_ADIE  equ     1126
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRGH
_BRGH  equ     1218
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CKE
_CKE  equ     1190
	global	_CSRC
_CSRC  equ     1223
	global	_DA
_DA  equ     1189
	global	_INTEDG
_INTEDG  equ     1038
	global	_PCFG0
_PCFG0  equ     1272
	global	_PCFG1
_PCFG1  equ     1273
	global	_PCFG2
_PCFG2  equ     1274
	global	_POR
_POR  equ     1137
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_RBPU
_RBPU  equ     1039
	global	_RCIE
_RCIE  equ     1125
	global	_RW
_RW  equ     1186
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRMT
_TRMT  equ     1217
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_PMADR
_PMADR  equ     269
	global	_PMADRH
_PMADRH  equ     271
	global	_PMDATA
_PMDATA  equ     268
	global	_PMDATH
_PMDATH  equ     270
	global	_PMCON1
_PMCON1  equ     396
	global	_RD
_RD  equ     3168
psect	stringtext2,class=CODE,delta=2
global __pstringtext2
__pstringtext2:
	
STR_1:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	120	;'x'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	33	;'!'
	retlw	0
psect	stringtext3,class=CODE,delta=2
global __pstringtext3
__pstringtext3:
	file	"PIC16F73_10X8_Scrolling_Display.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_array:
       ds      10

_i:
       ds      1

_j:
       ds      1

_p:
       ds      1

_s:
       ds      1

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Eh)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??___wmul
??___wmul: ;@ 0x0
	global	??_main
??_main: ;@ 0x0
	global	??__delay
??__delay: ;@ 0x0
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?__delay
?__delay: ;@ 0x0
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x0
	global	__delay$0
__delay$0:	; 4 bytes @ 0x0
	ds	2
	global	?___wmul
?___wmul: ;@ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	ds	2
	global	??_clock
??_clock: ;@ 0x4
	global	??_reset
??_reset: ;@ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	ds	1
	global	?_clock
?_clock: ;@ 0x5
	global	?_reset
?_reset: ;@ 0x5
	ds	1
	global	??_scroll
??_scroll: ;@ 0x6
	ds	1
	global	scroll@count
scroll@count:	; 2 bytes @ 0x7
	ds	2
	global	scroll@a
scroll@a:	; 1 bytes @ 0x9
	ds	1
	global	?_scroll
?_scroll: ;@ 0xA
	global	scroll@b
scroll@b:	; 1 bytes @ 0xA
	ds	1
	global	scroll@c
scroll@c:	; 1 bytes @ 0xB
	ds	1
	global	scroll@d
scroll@d:	; 1 bytes @ 0xC
	ds	1
	global	scroll@e
scroll@e:	; 1 bytes @ 0xD
	ds	1
	global	??_printf
??_printf: ;@ 0xE
	ds	11
	global	?_printf
?_printf: ;@ 0x19
	global	printf@p
printf@p:	; 2 bytes @ 0x19
	ds	2
	global	?_main
?_main: ;@ 0x1B
;Data sizes: Strings 16, constant 485, data 0, bss 14, persistent 1 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON           0      0       0
; BANK0           94     27      42
; BANK1           94      0       0


;Pointer list with targets:

;printf@p	PTR const unsigned char  size(2); Largest target is 16
;		 -> STR_1(CODE[16]), 
;?___wmul	unsigned int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0  336   0.00
;             _printf
;  _printf                                           11    2  336   0.00
;                                   14 BANK0   13
;             ___wmul
;             _scroll
;    _scroll                                          4    4  171   0.00
;                                    6 BANK0    8
;              _reset
;             __delay
;              _clock
;             ___wmul (ARG)
;    ___wmul                                          2    4   68   0.00
;                                    0 BANK0    6
;      _clock                                         1    0    0   0.00
;                                    4 BANK0    1
;             __delay
;      _reset                                         1    0    0   0.00
;                                    4 BANK0    1
;             __delay
;        __delay                                      0    4    0   0.00
;                                    0 BANK0    4
; Estimated maximum call depth 4
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            0      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               0      0       0       1        0.0%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;STACK                0      0       0       2        0.0%
;BITBANK0            5E      0       0       3        0.0%
;BANK0               5E     1B      2A       4       44.7%
;BITSFR3              0      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITBANK1            5E      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITSFR2              0      0       0       5        0.0%
;BANK1               5E      0       0       6        0.0%
;ABS                  0      0      2A       7        0.0%
;DATA                 0      0      2A       8        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 88 in file "D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_printf
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
	line	88
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;main.c: 87: void main()
;main.c: 88: {
	
_main:	
	opt stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	89
	
l30000423:	
;main.c: 89: TRISB = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000424:	
	line	90
;main.c: 90: TRISC1 = 0;
	bcf	(1081/8)^080h,(1081)&7
	
l30000425:	
	line	91
;main.c: 91: TRISC2 = 0;
	bcf	(1082/8)^080h,(1082)&7
	
l30000426:	
	line	92
;main.c: 92: still = 7;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_still)
	
l30000427:	
	line	94
;main.c: 94: printf("Your Text Here!");
	movlw	low((STR_1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_printf)
	movlw	high((STR_1))
	movwf	((?_printf))+1
	fcall	_printf
	goto	l30000427
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	96
	signat	_main,88
	global	_printf
psect	text43,local,class=CODE,delta=2
global __ptext43
__ptext43:

; *************** function _printf *****************
; Defined at:
;		line 79 in file "D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
; Parameters:    Size  Location     Type
;  p               2   25[BANK0 ] PTR const unsigned char 
;		 -> STR_1(16), 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0      13       0
;      Temp:    11
;      Total:   13
; This function calls:
;		___wmul
;		_scroll
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text43
	file	"D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
	line	79
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
;main.c: 78: void printf(const char *p)
;main.c: 79: {
	
_printf:	
	opt stack 6
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l30000419:	
	goto	l30000422
	
l30000420:	
	line	81
;main.c: 81: scroll(font_5x7[*p-' '][0], font_5x7[*p-' '][1], font_5x7[*p-' '][2], font_5x7[*p-' '][3], font_5x7[*p-' '][4]);
	movf	(printf@p),w
	movwf	fsr0
	movf	(printf@p+1),w
	FNCALL _printf,stringtab
	fcall	stringtab
	addlw	low(0FFE0h)
	movwf	(?___wmul)
	movlw	high(0FFE0h)
	skipnc
	movlw	high(0FFE0h)+1
	movwf	((?___wmul))+1
	movlw	low(05h)
	movwf	0+(?___wmul)+02h
	movlw	high(05h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	addlw	low(02h)
	movwf	(??_printf+0+0)
	movf	(1+(?___wmul)),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(??_printf+0+0)
	movlw	low ((_font_5x7))
	addwf	0+(??_printf+0+0),w
	movwf	fsr0
	movlw	high ((_font_5x7))
	skipnc
	movlw	high ((_font_5x7))+1
	addwf	1+(??_printf+0+0),w
	FNCALL _printf,stringtab
	fcall	stringtab
	movwf	(??_printf+2+0)
	movf	(??_printf+2+0),w
	movwf	0+(?_scroll)+01h
	movf	(printf@p),w
	movwf	fsr0
	movf	(printf@p+1),w
	FNCALL _printf,stringtab
	fcall	stringtab
	addlw	low(0FFE0h)
	movwf	(?___wmul)
	movlw	high(0FFE0h)
	skipnc
	movlw	high(0FFE0h)+1
	movwf	((?___wmul))+1
	movlw	low(05h)
	movwf	0+(?___wmul)+02h
	movlw	high(05h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	addlw	low(01h)
	movwf	(??_printf+3+0)
	movf	(1+(?___wmul)),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(??_printf+3+0)
	movlw	low ((_font_5x7))
	addwf	0+(??_printf+3+0),w
	movwf	fsr0
	movlw	high ((_font_5x7))
	skipnc
	movlw	high ((_font_5x7))+1
	addwf	1+(??_printf+3+0),w
	FNCALL _printf,stringtab
	fcall	stringtab
	movwf	(?_scroll)
	movf	(printf@p),w
	movwf	fsr0
	movf	(printf@p+1),w
	FNCALL _printf,stringtab
	fcall	stringtab
	addlw	low(0FFE0h)
	movwf	(?___wmul)
	movlw	high(0FFE0h)
	skipnc
	movlw	high(0FFE0h)+1
	movwf	((?___wmul))+1
	movlw	low(05h)
	movwf	0+(?___wmul)+02h
	movlw	high(05h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	addlw	low(04h)
	movwf	(??_printf+5+0)
	movf	(1+(?___wmul)),w
	skipnc
	addlw	1
	addlw	high(04h)
	movwf	1+(??_printf+5+0)
	movlw	low ((_font_5x7))
	addwf	0+(??_printf+5+0),w
	movwf	fsr0
	movlw	high ((_font_5x7))
	skipnc
	movlw	high ((_font_5x7))+1
	addwf	1+(??_printf+5+0),w
	FNCALL _printf,stringtab
	fcall	stringtab
	movwf	(??_printf+7+0)
	movf	(??_printf+7+0),w
	movwf	0+(?_scroll)+03h
	movf	(printf@p),w
	movwf	fsr0
	movf	(printf@p+1),w
	FNCALL _printf,stringtab
	fcall	stringtab
	addlw	low(0FFE0h)
	movwf	(?___wmul)
	movlw	high(0FFE0h)
	skipnc
	movlw	high(0FFE0h)+1
	movwf	((?___wmul))+1
	movlw	low(05h)
	movwf	0+(?___wmul)+02h
	movlw	high(05h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	addlw	low(03h)
	movwf	(??_printf+8+0)
	movf	(1+(?___wmul)),w
	skipnc
	addlw	1
	addlw	high(03h)
	movwf	1+(??_printf+8+0)
	movlw	low ((_font_5x7))
	addwf	0+(??_printf+8+0),w
	movwf	fsr0
	movlw	high ((_font_5x7))
	skipnc
	movlw	high ((_font_5x7))+1
	addwf	1+(??_printf+8+0),w
	FNCALL _printf,stringtab
	fcall	stringtab
	movwf	(??_printf+10+0)
	movf	(??_printf+10+0),w
	movwf	0+(?_scroll)+02h
	movf	(printf@p),w
	movwf	fsr0
	movf	(printf@p+1),w
	FNCALL _printf,stringtab
	fcall	stringtab
	addlw	low(0FFE0h)
	movwf	(?___wmul)
	movlw	high(0FFE0h)
	skipnc
	movlw	high(0FFE0h)+1
	movwf	((?___wmul))+1
	movlw	low(05h)
	movwf	0+(?___wmul)+02h
	movlw	high(05h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movlw	low ((_font_5x7))
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(0+(?___wmul)),w
	movwf	fsr0
	movlw	high ((_font_5x7))
	skipnc
	movlw	high ((_font_5x7))+1
	addwf	(1+(?___wmul)),w
	FNCALL _printf,stringtab
	fcall	stringtab
	fcall	_scroll
	
l30000421:	
	line	82
;main.c: 82: p++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@p),f
	skipnc
	incf	(printf@p+1),f
	movlw	high(01h)
	addwf	(printf@p+1),f
	
l30000422:	
	line	80
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@p),w
	movwf	fsr0
	movf	(printf@p+1),w
	FNCALL _printf,stringtab
	fcall	stringtab
	iorlw	0
	skipz
	goto	u161
	goto	u160
u161:
	goto	l30000420
u160:
	
l20:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
; =============== function _printf ends ============

psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:
	line	84
	signat	_printf,4216
	global	_scroll

; *************** function _scroll *****************
; Defined at:
;		line 46 in file "D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
; Parameters:    Size  Location     Type
;  a               1    wreg     unsigned char 
;  b               1   10[BANK0 ] unsigned char 
;  c               1   11[BANK0 ] unsigned char 
;  d               1   12[BANK0 ] unsigned char 
;  e               1   13[BANK0 ] unsigned char 
; Auto vars:     Size  Location     Type
;  a               1    9[BANK0 ] unsigned char 
;  count           2    7[BANK0 ] short 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       8       0
;      Temp:     1
;      Total:    8
; This function calls:
;		_reset
;		__delay
;		_clock
; This function is called by:
;		_printf
; This function uses a non-reentrant model
; 
psect	text44
	file	"D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
	line	46
	global	__size_of_scroll
	__size_of_scroll	equ	__end_of_scroll-_scroll
;main.c: 45: void scroll(char a, char b, char c, char d, char e)
;main.c: 46: {
	
_scroll:	
	opt stack 5
; Regs used in _scroll: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scroll@a stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(scroll@a)
	
l30000391:	
	line	47
;main.c: 47: short int count = 6;
	movlw	low(06h)
	movwf	(scroll@count)
	movlw	high(06h)
	movwf	((scroll@count))+1
	goto	l4
	
l30000392:	
	line	50
;main.c: 50: array[0] = a;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(scroll@a),w
	movwf	(_array)
	line	51
;main.c: 51: a = b;
	movf	(scroll@b),w
	movwf	(scroll@a)
	line	52
;main.c: 52: b = c;
	movf	(scroll@c),w
	movwf	(scroll@b)
	line	53
;main.c: 53: c = d;
	movf	(scroll@d),w
	movwf	(scroll@c)
	line	54
;main.c: 54: d = e;
	movf	(scroll@e),w
	movwf	(scroll@d)
	
l30000393:	
	line	55
;main.c: 55: e = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(scroll@e)
	
l30000394:	
	line	56
;main.c: 56: reset();
	fcall	_reset
	
l30000395:	
	line	58
;main.c: 58: for(s = 0;s < still; s++) {
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_s)
	goto	l30000411
	
l30000396:	
	line	59
;main.c: 59: for(i = 0; i < 10; i++) {
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_i)
	
l30000399:	
	line	60
;main.c: 60: p = 1;
	clrf	(_p)
	bsf	status,0
	rlf	(_p),f
	
l30000400:	
	line	61
;main.c: 61: for(j = 0;j < 9;j++) {
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_j)
	
l30000402:	
	line	62
;main.c: 62: PORTB = ~(array[i]&(p));
	movf	(_i),w
	addlw	(_array)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andwf	(_p),w
	xorlw	0ffh
	movwf	(6)	;volatile
	
l30000403:	
	line	63
;main.c: 63: _delay((unsigned long)((.05)*(4e6/4000.0)));
	movlw	16
movwf	(??_scroll+0+0),f
u217:
decfsz	(??_scroll+0+0),f
	goto	u217
	clrwdt

	
l30000404:	
	line	64
;main.c: 64: PORTB = ~(array[i]&(p));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	addlw	(_array)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andwf	(_p),w
	xorlw	0ffh
	movwf	(6)	;volatile
	line	65
;main.c: 65: _delay((unsigned long)((.05)*(4e6/4000.0)));
	movlw	16
movwf	(??_scroll+0+0),f
u227:
decfsz	(??_scroll+0+0),f
	goto	u227
	clrwdt

	line	66
;main.c: 66: p <<= 1;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rlf	(_p),f

	
l30000405:	
	line	61
	movlw	(01h)
	movwf	(??_scroll+0+0)
	movf	(??_scroll+0+0),w
	addwf	(_j),f
	
l30000406:	
	movlw	(09h)
	subwf	(_j),w
	skipc
	goto	u111
	goto	u110
u111:
	goto	l30000402
u110:
	
l30000407:	
	line	68
;main.c: 67: }
;main.c: 68: clock();
	fcall	_clock
	
l30000408:	
	line	59
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_scroll+0+0)
	movf	(??_scroll+0+0),w
	addwf	(_i),f
	
l30000409:	
	movlw	(0Ah)
	subwf	(_i),w
	skipc
	goto	u121
	goto	u120
u121:
	goto	l30000399
u120:
	
l30000410:	
	line	58
	movlw	(01h)
	movwf	(??_scroll+0+0)
	movf	(??_scroll+0+0),w
	addwf	(_s),f
	
l30000411:	
	movf	(_still),w
	subwf	(_s),w
	skipc
	goto	u131
	goto	u130
u131:
	goto	l30000396
u130:
	
l30000412:	
	line	71
;main.c: 69: }
;main.c: 70: }
;main.c: 71: for(i = 9; i > 0; i--) {
	movlw	(09h)
	movwf	(_i)
	
l30000415:	
	line	72
;main.c: 72: array[i] = array[i-1];
	movf	(_i),w
	addlw	0FFh
	addlw	(_array)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_scroll+0+0)
	movf	(_i),w
	addlw	(_array)&0ffh
	movwf	fsr0
	movf	(??_scroll+0+0),w
	movwf	indf
	
l30000416:	
	line	71
	movlw	low(01h)
	subwf	(_i),f
	
l30000417:	
	movf	(_i),f
	skipz
	goto	u141
	goto	u140
u141:
	goto	l30000415
u140:
	
l30000418:	
	line	74
;main.c: 73: }
;main.c: 74: count--;
	movlw	low(-1)
	addwf	(scroll@count),f
	skipnc
	incf	(scroll@count+1),f
	movlw	high(-1)
	addwf	(scroll@count+1),f
	
l4:	
	line	49
	movf	(scroll@count+1),w
	xorlw	80h
	movwf	(??_scroll+0+0)
	movlw	(high(01h))^80h
	subwf	(??_scroll+0+0),w
	skipz
	goto	u155
	movlw	low(01h)
	subwf	(scroll@count),w
u155:

	skipnc
	goto	u151
	goto	u150
u151:
	goto	l30000392
u150:
	
l3:	
	return
	opt stack 0
GLOBAL	__end_of_scroll
	__end_of_scroll:
; =============== function _scroll ends ============

psect	text45,local,class=CODE,delta=2
global __ptext45
__ptext45:
	line	76
	signat	_scroll,20600
	global	___wmul

; *************** function ___wmul *****************
; Defined at:
;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\wmul.c"
; Parameters:    Size  Location     Type
;  multiplier      2    2[BANK0 ] unsigned int 
;  multiplicand    2    4[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  product         2    0[BANK0 ] unsigned int 
; Return value:  Size  Location     Type
;                  2    2[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       6       0
;      Temp:     0
;      Total:    6
; This function calls:
;		Nothing
; This function is called by:
;		_printf
; This function uses a non-reentrant model
; 
psect	text45
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l30000431:	
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	
l30000432:	
	line	7
	btfss	(___wmul@multiplier),(0)&7
	goto	u171
	goto	u170
u171:
	goto	l37
u170:
	
l30000433:	
	line	8
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l37:	
	line	9
	movlw	01h
u185:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u185
	
l30000434:	
	line	10
	movlw	01h
u195:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u195
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u201
	goto	u200
u201:
	goto	l30000432
u200:
	
l30000435:	
	line	12
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	
l33:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
; =============== function ___wmul ends ============

psect	text46,local,class=CODE,delta=2
global __ptext46
__ptext46:
	line	13
	signat	___wmul,8314
	global	_clock

; *************** function _clock *****************
; Defined at:
;		line 32 in file "D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       1       0
;      Temp:     1
;      Total:    1
; This function calls:
;		__delay
; This function is called by:
;		_scroll
; This function uses a non-reentrant model
; 
psect	text46
	file	"D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
	line	32
	global	__size_of_clock
	__size_of_clock	equ	__end_of_clock-_clock
;pic16f7x.h: 20: volatile unsigned char INDF @ 0x00;
;pic16f7x.h: 21: volatile unsigned char TMR0 @ 0x01;
;pic16f7x.h: 22: volatile unsigned char PCL @ 0x02;
;pic16f7x.h: 23: volatile unsigned char STATUS @ 0x03;
;pic16f7x.h: 24: unsigned char FSR @ 0x04;
;pic16f7x.h: 25: volatile unsigned char PORTA @ 0x05;
;pic16f7x.h: 26: volatile unsigned char PORTB @ 0x06;
;pic16f7x.h: 27: volatile unsigned char PORTC @ 0x07;
;pic16f7x.h: 32: unsigned char PCLATH @ 0x0A;
;pic16f7x.h: 33: volatile unsigned char INTCON @ 0x0B;
	
_clock:	
	opt stack 4
; Regs used in _clock: [wreg]
	line	33
	
l30000388:	
;main.c: 33: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	
l30000389:	
	line	34
;main.c: 34: _delay((unsigned long)((100)*(4e6/4000000.0)));
	movlw	33
movwf	(??_clock+0+0),f
u237:
decfsz	(??_clock+0+0),f
	goto	u237

	
l30000390:	
	line	35
;main.c: 35: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_clock
	__end_of_clock:
; =============== function _clock ends ============

psect	text47,local,class=CODE,delta=2
global __ptext47
__ptext47:
	line	36
	signat	_clock,88
	global	_reset

; *************** function _reset *****************
; Defined at:
;		line 39 in file "D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       1       0
;      Temp:     1
;      Total:    1
; This function calls:
;		__delay
; This function is called by:
;		_scroll
; This function uses a non-reentrant model
; 
psect	text47
	file	"D:\My Projects\PIC16F73_projects\PIC16F73_10X8_Scrolling_Display\main.c"
	line	39
	global	__size_of_reset
	__size_of_reset	equ	__end_of_reset-_reset
;main.c: 38: void reset()
;main.c: 39: {
	
_reset:	
	opt stack 4
; Regs used in _reset: [wreg]
	line	40
	
l30000428:	
;main.c: 40: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	
l30000429:	
	line	41
;main.c: 41: _delay((unsigned long)((100)*(4e6/4000000.0)));
	movlw	33
movwf	(??_reset+0+0),f
u247:
decfsz	(??_reset+0+0),f
	goto	u247

	
l30000430:	
	line	42
;main.c: 42: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	
l2:	
	return
	opt stack 0
GLOBAL	__end_of_reset
	__end_of_reset:
; =============== function _reset ends ============

psect	text48,local,class=CODE,delta=2
global __ptext48
__ptext48:
	line	43
	signat	_reset,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
