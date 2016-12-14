# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/11 19:13:29 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 12:09:13 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strdup
	extern	_malloc
	extern	_ft_strlen

;rdi = *s1

_ft_strdup:
	push	rdi
	call _ft_strlen ; rax = len s1, pour le malloc
	push	rdi ; svg de s1
	push	rax ; svg de len
	inc		rax ; +1 a len pour le \0
	mov		rdi, rax ; prepare le call malloc
	call _malloc ; rax = s2
	pop		rdx ; rdx = len s1
	pop		rsi ; rsi = s1
	pop		rsi ; rsi = s1
	push	rdx ; svg len
	mov		rdi, rax ; mov s2 pour memcpy

	push	rdi
	mov		rcx, rdx ; Ici on a un beau memcpy !
	cld
	rep		movsb ; mov 1b rsi -> rdi, ++rsi/rdi, while rcx != 0
	pop		rax

	pop		r8 ; r8 = len
	mov		byte[rax + r8], 0 ; le \0 !
	ret
