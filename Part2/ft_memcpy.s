# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/11 19:14:05 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:29:40 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memcpy

_ft_memcpy:
	push	rdi
	mov		rcx, rdx
	cld
	rep movsb ; mov 1b rsi -> rdi, ++rsi/rdi, while rcx != 0
	pop rax
	ret
