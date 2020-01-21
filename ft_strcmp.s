# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: settaqi <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/18 20:54:12 by settaqi           #+#    #+#              #
#    Updated: 2020/01/18 20:54:14 by settaqi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SECTION .text
	GLOBAL _ft_strcmp


_ft_strcmp:
Loop:
		mov		al, byte [rdi]
		mov		bl, byte [rsi]
		cmp		al, 0
		je		cmp1
		cmp		bl, 0
		je		cmp1
		cmp		al, bl
		jne		cmp1
		inc		rdi
		inc		rsi
		jmp		Loop
cmp1:
		movzx		rbx, bl
		movzx		rax, al
		sub		rax, rbx
		ret
