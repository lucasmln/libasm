global	_ft_strdup
		extern	_malloc

_ft_strdup:
		xor		r9, r9
		xor		rax, rax

_ft_strlen:
		inc		r9
		cmp		[rdi + r9], byte 0
		jne		_ft_strlen
		push	rdi
		mov		rdi, r9
		call	_malloc
		cmp		rax, 0
		je		_return
		pop		rdi
		mov		r8, 0

_copy:
		mov		rsi, [rdi]
		cmp		rsi, 0
		jz		_return
		mov		[rax + r8], rsi
		inc		r8
		inc		rdi
		jmp		_copy
_return:
		mov		[rax + r8], byte 0
		ret
