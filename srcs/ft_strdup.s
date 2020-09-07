global	ft_strdup
		extern	malloc
		extern ft_strlen
		extern ft_strcpy
		extern __errno_location

ft_strdup:
		xor		r9, r9
		xor		rax, rax
		call		ft_strlen
		inc		rax
		push		rdi
		mov		rdi, rax
		call		malloc
		cmp		rax, 0
		je		_error
		pop		rsi
		mov		rdi, rax
		call		ft_strcpy
		ret

_error:
		call		__errno_location
		ret
