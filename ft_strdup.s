bits 64

global ft_strdup
extern malloc
extern ft_strlen
extern ft_strcpy

ft_strdup:
    call ft_strlen
    inc rax
    push rdi
    mov rdi, rax
    call malloc wrt ..plt
    pop rdx
    mov rdi, rax
    mov rsi, rdx
    call ft_strcpy
    ret