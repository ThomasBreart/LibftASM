# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/10 16:23:50 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 12:45:21 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen
; rdi = *s

_ft_strlen:
	push rdi
	mov	rax, 0
;	xor rcx, rcx
;	not rcx
	mov	rcx, -1
	cld
	repne	scasb ; cmp rax / rdi, ++rdi 1b, while (rcx != 0 && rax != rdi)
	neg	rcx
	sub	rcx, 2 ; -1 pour le \0 + -1 pour la base 2
	mov	rax, rcx
	pop rdi
	ret
