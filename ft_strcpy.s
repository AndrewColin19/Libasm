bits 64

global ft_strcpy

ft_strcpy:
    mov rcx, 0
    cmp rsi, 0
    jz return
    jmp copy

copy:
    cmp BYTE [rsi + rcx], 0
    je return
    mov dl, [rsi + rcx]
    mov [rdi + rcx], dl
    inc rcx
    jmp copy

return:
    mov rax, rdi
    ret