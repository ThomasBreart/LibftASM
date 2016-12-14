# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 01:07:25 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:11:47 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_isprint

_ft_isprint:
	mov	rax, 0
	cmp	rdi, 32
	jl	end
	cmp	rdi, 126
	jg	end
	mov	rax, 1

end:
	ret
