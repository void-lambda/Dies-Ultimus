default rel

section .data
    msg db ">> [ASM SUBSYSTEM]: MEMORY SECTOR OK", 10
    len equ $ - msg

section .text
    global asmfnc_

asmfnc_:
    mov rax, 1
    mov rdi, 1
    lea rsi, [msg]
    mov rdx, len
    syscall
    ret
