# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 01:17:21 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:55:51 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_islower

_ft_islower:
	mov	rax, 0
	cmp	rdi, 97
	jl	end
	cmp	rdi, 122
	jg	end
	mov	rax, 1

end:
	ret
