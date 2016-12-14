# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/07 02:39:42 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:02:39 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_bzero

_ft_bzero:
	mov rax, 0
	mov rcx, rsi
	cld
	rep stosb ; store rax -> rdi, ++rdi (de 1b), while rcx != 0
ret
