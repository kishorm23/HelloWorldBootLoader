[BITS 16]
[org 0x7C00]

start:
    mov si,MSG
    call print
    jmp $

print:           ; Expects null terminated message in si
    mov al,[si]
    or al,al
    jz  .end
    inc si
    call interrupt
    jmp print
.end:
    retn

interrupt:
    mov ah,0x0E         ; Specifies that we want to write a character to the screen
    mov bl,0x04         ; Specifies output text color
    mov bh,0x00         
    int 0x10            ; Signal video interrupt to BIOS
     int 21
    retn

;data
    MSG db 'Hello World! From Kishor',0x0A,0 ;null terminated string

TIMES 510 - ($ - $$) db 0         ;fill remaining with 0 to make it exactly 512 bytes
DW 0xAA55         ;boot signature

