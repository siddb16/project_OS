bits 16
org 0x7C00

start:
    mov ah, 0Eh
    mov bl, 65
    mov cl, 'a'

loop:
    mov al, bl 
    int 0x10
    inc bl
    mov al, cl
    inc cl
    int 0x10
    cmp al, 'z' 
    je exit 
    jmp loop 

exit :
    jmp $

times 510-($-$$) db 0
db 0x55, 0xaa