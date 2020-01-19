# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: settaqi <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/18 20:55:11 by settaqi           #+#    #+#              #
#    Updated: 2020/01/18 20:55:59 by settaqi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SECTION .text
	GLOBAL _ft_strlen


_ft_strlen:
		push	rbx
		mov		rbx, rdi
nextchar:
		cmp		byte [rbx], 0
		jz		finished
		inc		rbx
		jmp		nextchar
finished:
		sub		rbx, rdi
		mov		rax, rbx
		pop		rbx,
		ret
