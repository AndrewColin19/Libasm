bits 64

global ft_read
extern __errno_location

ft_read:
    mov rax, 0
    syscall
    jc error_exit
    ret

error_exit:
    push rax
    call __errno_location wrt ..plt
    mov rdx, rax
	pop rax
	mov DWORD [rdx], eax
	mov eax, -1
    ret
