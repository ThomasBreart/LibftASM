# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 01:07:57 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:12:48 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_toupper
	extern	_ft_islower

_ft_toupper:
	call	_ft_islower
	cmp	rax, 0
	je	error
	sub	rdi, 32
	mov	rax, rdi
	jmp	end

error:
	mov	rax, rdi

end:
	ret
