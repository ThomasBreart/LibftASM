# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/07 09:36:22 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:07:41 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcat
	extern	_ft_strlen

; s1 = rdi
; s2 = rsi

_ft_strcat:
	push	rdi
	push	rsi
	call	_ft_strlen
	add		rdi, rax
	mov		rdx, rdi
	pop		rdi
	push	rdi
	call	_ft_strlen
	mov		rcx, rax
	mov		rdi, rdx
	cld
	rep	movsb ; mov b rsi -> rdi, ++rsi/rdi, rcx--, while rcx != 0

end:
	mov		rdi, 0 ; Pas oublier le \0 !
	pop		rsi
	pop		rax
	ret
