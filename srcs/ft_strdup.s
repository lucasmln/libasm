global	ft_strdup
extern	malloc
extern	ft_strlen
extern	ft_strcpy
extern	__errno_location

ft_strdup:
	push	rdi
	call	ft_strlen
	push	rax	
	mov	rdi, rax
	call	malloc
	cmp	rax, 0
	je	_error
	pop	rsi
	pop	rdi
	mov	rsi, rdi
	mov	rdi, rax
	call	ft_strcpy
	ret

_error:
	call	__errno_location
	mov	rcx, 12
	mov	[rax], rcx 
	mov	rax, 0
	ret

