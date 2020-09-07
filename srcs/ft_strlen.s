global		ft_strlen

;rdi rsi rdx rcx r9 r8

ft_strlen:
	xor r12, r12
	jmp _loop

_loop:
	cmp [rdi], byte 0
	jz _return
	inc r12
	inc rdi
	jmp _loop

_return:
	mov rax, r12
	ret
