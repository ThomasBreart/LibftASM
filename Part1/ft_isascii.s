# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 01:06:13 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:10:15 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_isascii

_ft_isascii:
	mov	rax, 0
	cmp	rdi, 0
	jl	end
	cmp	rdi, 127
	jg	end
	mov	rax, 1

end:
	ret
