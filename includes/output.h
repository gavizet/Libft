/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gavizet <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/01 14:26:14 by gavizet           #+#    #+#             */
/*   Updated: 2017/06/01 14:40:59 by gavizet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PRINT_H
# define PRINT_H

void				ft_putendl(char const *s);
void				ft_putnbr(int nb);
void				ft_putchar(char c);
void				ft_putstr(char const *str);
void				ft_putnbr_fd(int n, int fd);
void				ft_putchar_fd(char c, int fd);
void				ft_putnbr_base(int nb, int base);
void				ft_putstr_fd(char const *s, int fd);
void				ft_putendl_fd(char const *s, int fd);
void				ft_putwchar(wchar_t str);
int					ft_putnwstr(const wchar_t *str, int len);

#endif
