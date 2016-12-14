# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/07 07:37:19 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:08:42 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isalpha

; rdi = c

_ft_isalpha:
	mov	rax, 0
	cmp	rdi, 0x41
	jl	end
	cmp	rdi, 0x7a
	jg	end
	cmp	rdi, 0x5a
	jle	true
	cmp	rdi, 0x61
	jge true
	jmp end

true:
	mov rax, 1

end:
	ret
