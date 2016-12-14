# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 01:07:49 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:13:19 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_tolower
	extern	_ft_isupper

_ft_tolower:
	call	_ft_isupper
	cmp	rax, 0
	je	error
	add	rdi, 32
	mov	rax, rdi
	jmp	end

error:
	mov	rax, rdi

end:
	ret
