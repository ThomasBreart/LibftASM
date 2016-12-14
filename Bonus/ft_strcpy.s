# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 02:00:44 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 11:00:56 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcpy
	extern _ft_strlen
	extern _ft_memcpy

_ft_strcpy:
	mov		rax, rdi
	mov		rdi, rsi ; swap rdi / rsi pour call strlen
	mov		rsi, rax
	call	_ft_strlen ; taille de src du coup
	mov		rdx, rax ; prepa de memcpy
	mov		rax, rdi
	mov		rdi, rsi ; re swap
	mov		rsi, rax
	push	rdx
	call	_ft_memcpy ; rax = new s
	pop		rdx
	mov		byte[rax + rdx], 0 ; le \0 !
ret
