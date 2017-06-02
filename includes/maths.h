/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   maths.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gavizet <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/01 14:21:31 by gavizet           #+#    #+#             */
/*   Updated: 2017/06/02 11:23:07 by gavizet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MATHS_H
# define MATHS_H

# include "libft.h"

# ifndef HEXA
#  define HEXA "0123456789ABCDEF"
# endif

int					ft_abs(int nb);
int					ft_sqrt(int nb);
int					ft_rec_fac(int nb);
char				*ft_itoa(ssize_t n);
int					ft_atoi(const char *str);
int					ft_pow(int nb, int power);
unsigned int		reverse_bits(unsigned int octet);
char				*ft_itoa_base_uns(uintmax_t nbr, int base);
char				*ft_itoa_base_signed(ssize_t nb, int base);

#endif
