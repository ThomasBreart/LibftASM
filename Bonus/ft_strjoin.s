# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strjoin.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 11:06:35 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 13:20:56 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

; char *ft_strjoin(char *s1, char *s2)

section .text
	global _ft_strjoin
	extern _ft_strlen
	extern _ft_strnew
	extern _ft_strcat
	extern _ft_strcpy

;rdi = s1
; rsi = s2

_ft_strjoin:
	push rsi ; --> s2
	push rsi ; --> s2
	push rdi ; --> s1
	push rsi ; --> s2
	call _ft_strlen ; rax = len s1
	pop  rdi ; <== s2
	push rax ; --> len1
	call _ft_strlen ; rax = len s2
	pop  rdi ; <== len1
	add  rdi, rax
	call	_ft_strnew ; rax = s3
	cmp		rax, 0
	je		error
	mov  rdi, rax
	pop  rsi ; <== s1
	call _ft_strcpy
	mov		rdi, rax
	pop		rsi ; <== s2
	pop		rsi ; <== s2
	call	_ft_strcat
	ret

error:
	pop rdi
	pop rsi
	pop rsi
	xor rax, rax
	ret
