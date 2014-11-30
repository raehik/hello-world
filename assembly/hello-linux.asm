section .text
global	_start

_start:
    mov edx,len         ;message length
    mov ecx,msg         ;message
    mov ebx,1           ;stdout
    mov eax,4           ;sys_write
    int 0x80            ;call

    mov ebx,0           ;arg exit code
    mov eax,1           ;sys_exit
    int 0x80            ;call

section .data

msg db  'Hello World!',0xa
len equ $ - msg
