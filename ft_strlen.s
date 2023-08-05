bits 64

global ft_strlen

ft_strlen:
    mov rax, 0

boucle:
    cmp BYTE [rdi + rax], 0 
    je return
    inc rax
    jmp boucle

return:
    ret