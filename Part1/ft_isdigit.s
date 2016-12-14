# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/10 13:44:58 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:09:12 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isdigit

_ft_isdigit:
	mov	rax, 0
	cmp	rdi, 48
	jl	end
	cmp	rdi, 57
	jg	end
	mov	rax, 1

end:
	ret
