# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/10 15:31:09 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:19:59 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4
%define EOF				-1

section .data
str:
	.string db "(null)", 10
	.len equ $ - str.string

section	.text
	global	_ft_puts
	extern	_ft_strlen

_ft_puts:
	push	rdi
	cmp		rdi, 0
	je		null2
	push	0xa ; enregistre '\n' sur la stack, pour le 2e write
	call	_ft_strlen
	mov		rsi, rdi
	mov		rdi, 1
	mov		rdx, rax
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jc	error
	mov		rdi, 1
	mov		rsi, rsp
	mov		rdx, 1
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jc	error
	pop		rax
	pop		rdi
	mov		rax, 1
	ret

null2:
	mov	rdi, 1
	lea	rsi, [rel str.string]
	mov	rdx, str.len
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jc	error
	pop		rdi
	mov		rax, 1
	ret

error:
	pop		rax
	pop		rdi
	mov	rax, EOF
	ret
