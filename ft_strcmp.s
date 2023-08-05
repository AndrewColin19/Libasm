bits 64

global ft_strcmp

ft_strcmp:
    mov rcx, -1

comp:
    inc rcx
    cmp BYTE [rdi + rcx], 0
    je return
    cmp BYTE [rsi + rcx], 0
    je return
    mov dl, BYTE [rdi + rcx]
    cmp dl, BYTE [rsi + rcx]
    je comp

return:
    movzx rax, BYTE [rdi + rcx]
	movzx rdx, BYTE [rsi + rcx]
	sub rax, rdx
	ret