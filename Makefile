# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbreart <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/29 13:22:18 by tbreart           #+#    #+#              #
#    Updated: 2015/06/13 15:08:26 by tbreart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
CC = gcc
NASM = /usr/local/Cellar/nasm/2.12.02/bin/nasm -f macho64
FLAGS = -Wall -Wextra -Werror
SRC = Part1/ft_bzero.s \
	Part1/ft_isalnum.s \
	Part1/ft_isalpha.s \
	Part1/ft_isascii.s \
	Part1/ft_isdigit.s \
	Part1/ft_puts.s \
	Part1/ft_isprint.s \
	Part1/ft_tolower.s \
	Part1/ft_toupper.s \
	Part1/ft_strcat.s \
	Part2/ft_strlen.s \
	Part2/ft_memset.s \
	Part2/ft_strdup.s \
	Part2/ft_memcpy.s \
	Part3/ft_cat.s \
	Bonus/ft_isblank.s \
	Bonus/ft_islower.s \
	Bonus/ft_isupper.s \
	Bonus/ft_putchar.s \
	Bonus/ft_putstr.s \
	Bonus/ft_isxdigit.s \
	Bonus/ft_strnew.s \
	Bonus/ft_strcpy.s \
	Bonus/ft_strjoin.s

MAIN = main.c

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@echo "-> Creation $(NAME)"
	@ranlib $(NAME)

%.o: %.s
	@echo "-> Compilation $<"
	@$(NASM) -o $@ $<
	@ar -rc $(NAME) $@

test: all
	$(CC) $(FLAGS) $(NAME) $(MAIN) -o $@

clean:
	@echo "Suppression des fichiers objet"
	@rm -f $(OBJ)

fclean: clean
	@echo "Suppression du binaire"
	@rm -f $(NAME)
	@rm -f test

re: fclean all

.PHONY: all clean fclean re
