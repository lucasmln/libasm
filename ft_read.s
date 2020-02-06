%define sys_read 0x20000003

global		_ft_read

_ft_read:
	mov r8, rdx
;	cmp rdi, byte -1
;	je _error_file
;	mov rax, 0
	mov rax, sys_read
	syscall
	ret
;	cmp r8, byte 0
;	je _read_ok

_read_ok:
	ret

_error_file:
	mov rax, -1
	ret
