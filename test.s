global		_loop

;rdi rsi rdx rcx r9 r8

_mafonction:
;	push rdi
	
_loop:
	cmp rdi, 0
	jz _return
	dec rdi
	jmp _loop

_return:
;	pop rdi
	mov rax, rdi
	ret
