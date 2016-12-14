# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isxdigit.s                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 03:34:46 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 03:55:17 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isxdigit

_ft_isxdigit:
	mov		rax, 0
	cmp		rdi, 48
	jl		end
	cmp		rdi, 58
	jl		true
	cmp		rdi, 65
	jl		end
	cmp		rdi, 71
	jl		true
	cmp		rdi, 97
	jl		end
	cmp		rdi, 102
	jg		end

true:
	mov		rax, 1
	ret

end:
	ret
