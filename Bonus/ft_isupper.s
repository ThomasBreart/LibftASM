# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 01:19:40 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:56:04 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_isupper

_ft_isupper:
	mov	rax, 0
	cmp	rdi, 65
	jl	end
	cmp	rdi, 90
	jg	end
	mov	rax, 1

end:
	ret
