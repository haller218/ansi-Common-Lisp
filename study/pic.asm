include "p16f84"

org 0
    goto main


main: 
    ; goto seltfg
    ; goto incfgs
    ; goto decfgs
    ; goto bsfgs
    ; goto bsfht
    ; goto swapgs
    ; goto addlwgs
    ; goto addwfgs
    ; goto subwfgs
    ; goto andlwgs
    ; GOTO andwfgs
    ; GOTO IORLWGS
    ; GOTO IORWFGS
    ; GOTO XORLWGS
    ; GOTO XORWFGGS
    ; GOTO COMFGS
    ; GOTO RLFGS
    ; GOTO RLFGGS
    GOTO RRFGS
    
RRFGS:
    
    MOVLW 0X42
    MOVWF TRISB
    MOVLW 0X22
    
    RRF TRISB, W
    
    GOTO RRFGS

RLFGGS:
    
    MOVLW 0X8F
    MOVWF TRISB
    MOVLW 0X22
    
    RLF TRISB, F
    
    GOTO RLFGGS



RLFGS:
    
    MOVLW 0X42
    MOVWF FSR
    MOVLW 0X22
    MOVLW 0X0
    
    RLF FSR, W
    
    GOTO RLFGS
    
    
COMFGS:
    
    MOVLW 0X22
    MOVWF FSR
    MOVLW 0X01
    
    COMF FSR, W
    
    GOTO COMFGS
    
    
XORWFGGS:
    
    MOVLW 0X22
    MOVWF FSR
    MOVLW 0X22
    
    XORWF FSR, W
    
    GOTO XORWFGGS
    
    
XORLWGS:
    
    MOVLW 0X04
    
    XORLW 0X12
    
    GOTO XORLWGS
    
    
IORWFGS:
    
    MOVLW 0XFF
    MOVWF FSR
    MOVLW 0X77
    
    IORWF FSR, F
    
    GOTO IORWFGS
    
    
IORLWGS: 

    MOVLW 0X95
    IORLW 0X0F
    
    GOTO IORLWGS
    
    
ANDWFGS:
    
    MOVLW 0XFF
    MOVWF FSR
    MOVLW 0X77
    
    ANDWF FSR, W
    
    GOTO ANDWFGS


andlwgs:

    movlw 0x95
    
    andlw 0x0F
    
    GOTO ANDLWGS
    
    
    
subwfgs:
    
    movlw 0x20
    movwf fsr
    movlw 0x5
    
subgs:

    subwf fsr
    
    goto subgs
    
    
 addwfgs:
    
    movlw 0x10
    movwf porta
    movlw 0xF1
    
    ADDWF PORTA, W
    
    GOTO ADDWFGS
    


addfgs:
     movlw 0x07
     movwf intcon
     movlw 0x20
     
     addwf intcon, f
     
     goto addfgs
    

addlwgs:

    movlw 0xFF
    
addfgs:
    
    addlw 0x01
    
    goto addfgs

addsgs:

    movlw 0xF1
    
addggs:
    
    addlw 0x15
    
    goto addggs


adds:

    movlw 0x20
    
addgs
    
    addlw 0x15
    
    goto addgs


swapgs:

     movlw 0x0f
     movwf fsr
     
swapow:
     
     swapf fsr, 1
     
     goto swapow



bsfht:
    
    movlw 0x1
    movwf f
    
behs:

    incf f, f
    bsf status, f
 
    goto behs
   


bsfgs:
    
    movlw 0x0
    movwf f
    
    bsf f, 4
    
    goto bsfgs


decfgs:
     
     movlw 0xff
     movwf fsr
     
dechg:
     decf fsr, 1
   
     goto dechg
    


incfgs:
   
   movlw 0xff
   movwf indf
   movlw 0x5
   incf indf, f
   
   goto main
   


seltfg:
	movlw 0x10
	movlw 0x9
	movwf fsr
	movlw 0x5
	
	incf fsr, f
	
	movlw 0x6
	movwf tmr0
	movlw 0x5
	
	incf tmr0, w
	
	goto main
	
	







