/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gavizet <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/12/07 14:15:44 by gavizet           #+#    #+#             */
/*   Updated: 2017/06/01 13:04:03 by gavizet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int		is_type(char c)
{
	if (c == 's' || c == 'S' ||
		c == 'd' || c == 'D' ||
		c == 'o' || c == 'O' ||
		c == 'c' || c == 'C' ||
		c == 'u' || c == 'U' ||
		c == 'x' || c == 'X' ||
		c == 'p' || c == 'i' ||
		c == 'b' || c == 'B' ||
		c == '%')
		return (1);
	return (0);
}

int		is_flags(char c)
{
	if (c == ' ' || c == '+' || c == '-' || c == '#' || c == '0')
		return (1);
	return (0);
}
