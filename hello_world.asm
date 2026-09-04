bits 16
org 0x7C00

start:
    mov ah, 0Eh
    mov al, 'H'
    int 10h
    mov ah, 0Eh
    mov al, 'e'
    int 10h
    mov ah, 0Eh
    mov al, 'l'
    int 10h
    mov ah, 0Eh
    mov al, 'l'
    int 10h 
    mov ah, 0Eh
    mov al, 'o'
    int 0x10
    mov ah, 0Eh
    mov al, ' '
    int 0x10
    mov ah, 0Eh 
    mov al, 'w'
    int 0x10
    mov ah, 0Eh 
    mov al, 'o'
    int 0x10
    mov ah, 0Eh
    mov al, 'r'
    int 0x10
    mov ah, 0Eh 
    mov al, 'l'
    int 0x10
    mov ah, 0Eh
    mov al, 'd'
    int 0x10
times  510-($-$$) db 0 
db 0x55, 0xaa