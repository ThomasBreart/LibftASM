/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tbreart <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/06/07 02:48:48 by tbreart           #+#    #+#             */
/*   Updated: 2015/06/13 15:03:17 by tbreart          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <ctype.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>

void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *s1, const char *s2);
int		ft_isalpha(int c);
int		ft_isascii(int c);
int		ft_isdigit(int c);
int		ft_isprint(int c);
int		ft_isalnum(int c);
int		ft_puts(const char *s);
int		ft_tolower(int c);
int		ft_toupper(int c);
void	*ft_memcpy(void *dst, const void *src, size_t n);
void	*ft_memset(void *b, int c, size_t len);
char	*ft_strdup(const char *s1);
size_t	ft_strlen(const char *s);
void	ft_cat(int fd);
int		ft_isblank(int c);
int		ft_islower(int c);
int		ft_isupper(int c);
int		ft_isxdigit(int c);
int		ft_putchar(int c);
void	ft_putstr(char *s);
char	*ft_strcpy(char *dst, char *src);
char	*ft_strnew(size_t size);
char	*ft_strjoin(char *s1, char *s2);
