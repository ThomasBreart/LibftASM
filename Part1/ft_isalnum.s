# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/10 08:22:10 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 10:09:44 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global	_ft_isalnum
	extern	_ft_isalpha
	extern	_ft_isdigit

_ft_isalnum:
	call	_ft_isalpha
	cmp	rax, 1
	je	end
	call	_ft_isdigit

end:
	ret
