# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putchar.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/12 23:41:00 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:56:49 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_putchar

_ft_putchar:
	push	rdi
	mov	rsi, rsp
	mov	rdi, 1
	mov	rdx, 1
	mov	rax, 0x2000004
	syscall
	jc	error
	pop rax
	ret

error:
	pop rax
	mov rax, -1
	ret
