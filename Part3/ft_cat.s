# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/12 16:47:45 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:44:34 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4
%define READ				3

section .data
str:
	.buff db 50
	.len equ $ - str.buff

section .text
	global _ft_cat

_ft_cat:

while:
	lea		rsi, [rel str.buff]
	mov		rdx, str.len
	mov		rax, MACH_SYSCALL(READ)
	syscall
	jc		end
	cmp		rax, 0
	je		end
	push	rdi
	mov		rdi, 1
	lea		rsi, [rel str.buff]
	mov		rdx, str.len
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	pop		rdi
	jc		end
	jmp		while

end:
	ret
