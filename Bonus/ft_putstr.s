# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putstr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 01:38:40 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 07:34:39 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_putstr
	extern _ft_putchar
	extern _ft_strlen

_ft_putstr:
	call	_ft_strlen
	mov		rdx, rax
	mov		rsi, rdi

while:
	mov		rdi, [rsi]
	cmp		rdx, 0
	je		end
	dec		rdx
	push	rdx
	push	rsi
	call	_ft_putchar
	pop		rsi
	pop		rdx
	add		rsi, 1
	jmp		while

end:
	ret
