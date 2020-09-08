global		_ft_strcmp


_ft_strcmp:
	jmp _loop

_loop:
		xor rax, rax
		xor r8, r8
		xor r9, r9
		mov r8b, [rdi]
		mov r9b, [rsi]
		inc rdi
		inc rsi
		cmp r9, byte 0
		je _end
		sub r8, r9
		cmp r8, byte 0
		jne _end
		jz _loop
    
_end:
		mov rax, r8
		ret
