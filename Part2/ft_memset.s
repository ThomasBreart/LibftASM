# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/11 17:32:15 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:31:10 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memset

; rdi = *b
; rsi = c
; rdx = len

_ft_memset:
	push	rdi
	mov		rax, rsi
	mov		rcx, rdx
	cld
	rep		stosb ; rax -> rdi, ++rdi, while rcx != 0
	pop		rax
	ret
