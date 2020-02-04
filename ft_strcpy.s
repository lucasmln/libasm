global		_ft_strcpy

_ft_strcpy:
	xor r12, r12
	mov r12, rsi
	jmp _loop

_loop:
	cmp [rdi], byte 0
	jz _return
	mov r12, [rdi]
	mov [rsi], r12b
	inc rsi
	inc rdi

_return:
	mov rax, r12
	ret
