bits 64
default rel

%macro flag_test 2
global %1 %+ _flag_test
%1 %+ _flag_test:
    mov     register_save[0x00], rdi
    mov     register_save[0x08], rsi
    mov     register_save[0x10], rdx
    push    0x0000
    popf
    %1      %2
    pushf
    pop     rax
    push    0xFCFF
    popf
    mov     rdi, register_save[0x00]
    mov     rsi, register_save[0x08]
    mov     rdx, register_save[0x10]
    %1      %2
    pushf
    pop     rcx
    xor     rax, rcx
    ret
%endmacro

flag_test and, {rdi, rsi}

section .bss

align 8

; rdi, rsi, rdx
register_save:
    resq    3
