# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strnew.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 06:15:55 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 11:03:09 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strnew
	extern _ft_bzero
	extern _malloc

_ft_strnew:
	inc		rdi
	push	rdi
	call	_malloc
	pop		rsi
	cmp		rax, 0
	je		end
	mov		rdi, rax
	push	rdi
	call	_ft_bzero
	pop		rax

end:
	ret
