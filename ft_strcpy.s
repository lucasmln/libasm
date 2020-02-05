global		_ft_strcpy

;rdi rsi rdx rcx r9 r8

_ft_strcpy:
	jmp _loop

_loop:
	mov r9, [rsi]
	mov [rdi], r9
	cmp [rsi], byte 0
	jz _return
	inc rdi
	inc rsi
	jmp _loop

_return:
	mov rax, rdi
	ret
