%define sys_write 0x20000004

global		ft_write
extern		__errno_location

; write : 0x2000004

ft_write:
		xor rax, rax
		mov r8, rdx
		mov rcx, rsi
		mov rax, 1
		syscall
		cmp rax, 0
		jl	_error_write
		ret

_error_write:
	neg rax
	mov rcx, rax
	push rcx
	call __errno_location
	pop rcx
	mov [rax], rcx
	mov rax, -1
	ret
