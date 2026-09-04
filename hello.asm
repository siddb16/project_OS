bits 16
org 0x7C00

start:
    jmp $
times  510-($-$$) db 0 
db 0x55, 0xaa