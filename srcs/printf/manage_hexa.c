/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   manage_int.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gavizet <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/12/02 11:07:46 by gavizet           #+#    #+#             */
/*   Updated: 2017/06/08 16:34:54 by gavizet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		print_flag_x(t_format *fmt, char *str, int len)
{
	int	ret_val;

	ret_val = 0;
	if (fmt->precision != -1 && fmt->precision <= len)
	{
		fmt->width -= (len - fmt->precision);
		fmt->precision = 0;
	}
	if (fmt->precision != -1 && fmt->precision > len)
		fmt->precision -= len;
	if (fmt->flags.diez == 1 && str[0] != '0')
		fmt->width -= 2;
	if (fmt->flags.diez == 1 && fmt->flags.zero == 1 && str[0] != '0')
		ret_val += aff_hexa(fmt);
	if (fmt->flags.minus == 0)
		ret_val += aff_blank(fmt);
	if (fmt->flags.diez == 1 && fmt->flags.zero == 0 && str[0] != '0')
		ret_val += aff_hexa(fmt);
	ret_val += aff_zero(fmt) + putstr_wsign(str, fmt);
	if (fmt->flags.minus == 1)
		ret_val += aff_blank(fmt);
	ft_strdel(&str);
	return (ret_val);
}

int		apply_flag_x(t_format *fmt, va_list args)
{
	int		len;
	char	*str;

	str = convert_unsint(fmt, args, 16);
	len = ft_strlen(str);
	if (fmt->precision == 0 && fmt->flags.diez == 1 && str[0] == '0')
		return (0);
	if ((fmt->precision != -1 || fmt->flags.minus == 1) && fmt->flags.zero == 1)
		fmt->flags.zero = 0;
	if (fmt->width != 0 && fmt->width <= len)
		fmt->width = 0;
	if (fmt->width != 0 && fmt->precision == -1 && fmt->width > len)
		fmt->width -= len;
	if (fmt->width != 0 && fmt->precision != -1 && fmt->width > len)
		fmt->width -= fmt->precision;
	if (fmt->precision == 0 && fmt->flags.diez == 0 && str[0] == '0')
	{
		fmt->width += 1;
		str = ft_strnew(0);
	}
	if (fmt->precision == 0 && fmt->flags.diez == 1 && str[0] == '0')
		return (0);
	return (print_flag_x(fmt, str, len));
}
