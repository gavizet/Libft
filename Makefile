# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gavizet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/01 14:43:03 by gavizet           #+#    #+#              #
#    Updated: 2017/06/01 17:10:44 by gavizet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#---------------------------------| COLORS |-----------------------------------#
NOC			= \033[0m
BOLD		= \033[1m
UNDERLINE	= \033[4m
BLACK		= \033[0;30m
RED			= \033[0;31m
GREEN		= \033[0;32m
YELLOW		= \033[0;33m
BLUE		= \033[0;34m
VIOLET		= \033[0;35m
CYAN		= \033[0;36m
WHITE		= \033[0;37m
#------------------------------------------------------------------------------#

#--------------------------------| LIBRARY |-----------------------------------#
NAME 		= libft.a
#------------------------------------------------------------------------------#

#-------------------------------| COMPILATION |--------------------------------#
CC			= gcc
FLAGS		= -Wall -Wextra -Werror -O3
MAKE		= make -C
#------------------------------------------------------------------------------#

#---------------------------------| INCLUDES |---------------------------------#
SRCSPATH		= srcs/
OBJPATH			= objs/
INCPATH			= includes/
#------------------------------------------------------------------------------#

#------------------------------| SOURCE FILES |--------------------------------#
PRINTF		= printf/cast.c printf/check.c printf/utils.c					\
			  printf/ft_printf.c printf/parse_args.c printf/manage_int.c	\
			  printf/manage_char.c	printf/manage_hexa.c					\
			  printf/manage_octal.c printf/manage_wchar.c					\
			  printf/manage_binary.c printf/manage_string.c					\
			  printf/manage_percent.c printf/manage_pointer.c				\
			  printf/manage_uns_int.c	printf/manage_wstring.c				\
			  printf/get_conversion.c

LST			= lst/ft_lstadd.c lst/ft_lstcmp.c lst/ft_lstdel.c				\
			  lst/ft_lstmap.c lst/ft_lstnew.c lst/ft_lstrev.c				\
			  lst/ft_lstsize.c lst/ft_lstiter.c lst/ft_lstclear.c			\
			  lst/ft_lstprint.c	lst/ft_lstdelone.c lst/ft_lstaddback.c

MATHS		= maths/ft_abs.c maths/ft_pow.c	maths/ft_atoi.c maths/ft_itoa.c	\
			  maths/ft_sqrt.c maths/ft_rec_fac.c maths/reverse_octet.c		\
			  maths/ft_itoa_base_uns.c maths/ft_itoa_base_signed.c

MEM			= mem/ft_bzero.c mem/ft_memcpy.c mem/ft_memchr.c				\
			  mem/ft_memcmp.c mem/ft_memdel.c mem/ft_memset.c				\
			  mem/ft_memccpy.c mem/ft_memmove.c	mem/free_tab2d.c			\
			  mem/ft_memalloc.c

OUTPUT		= output/ft_putnbr.c output/ft_putstr.c output/ft_putchar.c		\
			  output/ft_putendl.c output/ft_putwchar.c						\
			  output/ft_putnwstr.c output/ft_putnbr_fd.c					\
			  output/ft_putstr_fd.c	output/ft_putendl_fd.c					\
			  output/ft_putchar_fd.c output/ft_putnbr_base.c

STR			= str/ft_strcat.c str/ft_strchr.c str/ft_strclr.c				\
			  str/ft_strcmp.c str/ft_strcpy.c str/ft_strdel.c				\
			  str/ft_strdup.c str/ft_strequ.c str/ft_strlen.c				\
			  str/ft_strmap.c str/ft_strnew.c str/ft_strrev.c				\
			  str/ft_strstr.c str/ft_strsub.c str/ft_strnstr.c				\
			  str/ft_strrchr.c str/ft_striter.c str/ft_strjoin.c			\
			  str/ft_strlcat.c str/ft_strtrim.c str/ft_wstrlen.c			\
			  str/ft_strmapi.c str/ft_strncat.c str/ft_strncmp.c			\
			  str/ft_strncpy.c str/ft_strnequ.c str/ft_striteri.c			\
			  str/ft_strsplit.c str/ft_str_isdigit.c str/ft_calc_wstrlen.c

UTILS		= utils/ft_swap.c utils/ft_isalnum.c utils/ft_isalpha.c			\
			  utils/ft_isascii.c utils/ft_isdigit.c							\
			  utils/ft_islower.c utils/ft_isprint.c utils/ft_isupper.c		\
			  utils/ft_tolower.c utils/ft_toupper.c utils/get_next_line.c
#------------------------------------------------------------------------------#

#---------------------------------| OBJECTS |----------------------------------#
OBJS	= $(SRCS:%.c=%.o)
#------------------------------------------------------------------------------#


#----------------------------------| RULES |-----------------------------------#
all : $(NAME)

%.o: %.c

$(NAME) :

.PHONY	:	clean fclean

clean:


fclean:

re:		fclean all
#------------------------------------------------------------------------------#
