global		_ft_write

; write : 0x2000004

_ft_write:
		mov r8, rdx
		mov rcx, rsi
		mov rax, 0x2000004
		syscall
		cmp rdx, r8
		jz	_error_write
		ret

_error_write:
	mov rax, -1
	ret
