global		ft_strcpy

;rdi rsi rdx rcx r9 r8

ft_strcpy:
	xor rax, rax
	jmp _loop

_loop:
	mov dl, [rsi + rax]
	cmp dl, 0
	je _return
	mov [rdi + rax], dl
	inc rax
	jmp _loop

_return:
	mov [rdi + rax], dl
	mov rax, rdi
	ret
