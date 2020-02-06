%define sys_read 0x2000003

;rdi rsi rdx rcx r9 r8

global		_ft_read

_ft_read:
	xor rax, rax
	cmp rdi, -1
	je _error_file
	mov r8, rdx
	mov rax, sys_read
	syscall
	cmp r8, rdx
	je _good_read
	cmp rdx, r8
	je _error_file
	ret

_good_read:
	ret

_error_file:
	mov rax, -1
	ret
