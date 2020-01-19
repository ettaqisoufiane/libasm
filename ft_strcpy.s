# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: settaqi <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/18 20:54:31 by settaqi           #+#    #+#              #
#    Updated: 2020/01/18 20:54:34 by settaqi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SECTION .text
	GLOBAL _ft_strcpy


_ft_strcpy:
		push	rbx
		mov		rbx, rsi
		push	rdx
		mov		rdx, rdi
copychar:
		cmp		byte [rbx], 0
		jz		finishstrcpy
		mov		rax, [rbx]
		mov		[rdx], rax
		inc		rdx
		inc		rbx
		jmp		copychar
finishstrcpy:
		mov		byte [rdx + 1], 0
		mov		rax, rdi
		pop		rbx
		pop		rdx
		ret
