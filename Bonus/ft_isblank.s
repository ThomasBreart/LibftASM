# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isblank.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 01:14:20 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:55:36 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global	_ft_isblank

_ft_isblank:
	mov	rax, 0
	cmp	rdi, 9
	je	true
	cmp	rdi, 32
	je	true
	jmp	end

true:
	mov	rax, 1

end:
	ret
