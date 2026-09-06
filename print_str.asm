bits 16
org 0x7C00

start:
    mov ah, 0Eh
    mov bx, alp

printString:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10 
    inc bx
    jmp printString

end:
    jmp $

alp:
    db "Who is mine", 0
    
times  510-($-$$) db 0 
db 0x55, 0xaa