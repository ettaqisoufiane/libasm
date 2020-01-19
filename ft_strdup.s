
SECTION .text
	extern	_malloc
	extern	_ft_strcpy
	extern	_ft_strlen
	GLOBAL _ft_strdup

_ft_strdup:
		mov		rbx, rdi
		call	_ft_strlen
		mov		rdx, rax
		push	rdi
		mov		rdi, rdx
		inc		rdi
		call	_malloc
		cmp 	rax, 0
		je 		exit
		pop		rdi
		mov 	rsi, rdi
		mov 	rdi, rax
		call	_ft_strcpy
		ret
exit:
		ret