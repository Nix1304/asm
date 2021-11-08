global _main

section .text
_main: ; entry point for programm
    call print

print:
    mov     rax, 0x2000004 ; sytem call for write
    mov     rdi, 1 ; file handle 1 is stdout
    mov     rsi, msg ; addres of string to output
    mov     rdx, len ; number of bytes
    syscall ; invoke operating system to do the write

    mov     rax, 0x2000001 ; system call for exit
    mov     rdi, 0 ; exit code 0
    syscall ; invoke operating system to exit

section .data
msg: db "Hello, world!", 10 ; allocate space for string
len: equ $-msg ; const