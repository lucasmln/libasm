global	ft_read
extern	__errno_location
%define sys_read 0x2000003



ft_read:
	xor rax, rax
	syscall
	cmp rax, 0
	jl  _error
	xor rdx, rdx
	mov [rsi + rax], rdx
	ret

_error:
	neg rax
	mov rcx, rax
	push rcx
	call __errno_location
	pop rcx
	mov [rax], rcx
	mov rax, -1
	ret
