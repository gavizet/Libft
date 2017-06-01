# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gavizet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/01 14:43:03 by gavizet           #+#    #+#              #
#    Updated: 2017/06/01 16:44:15 by gavizet          ###   ########.fr        #
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
FLAGS		= -Wall -Wextra -Werror
MAKE		= make -C
#------------------------------------------------------------------------------#

#---------------------------------| INCLUDES |---------------------------------#
OBJPATH			= objs/
INCPATH			= includes/
MATHS_PATH		= srcs/maths/
PRINT_PATH		= srcs/print/
UTILS_PATH		= srcs/utils/
MEM_PATH		= srcs/memory/
STR_PATH		= srcs/string/
FT_PRINTF_PATH	= srcs/ft_printf/
LL_PATH			= srcs/linked_list/
#------------------------------------------------------------------------------#

#------------------------------| SOURCE FILES |--------------------------------#
FT_PRINTF	= cast.c check.c utils.c ft_printf.c parse_args.c manage_int.c	\
			  manage_char.c	manage_hexa.c manage_octal.c manage_wchar.c		\
			  manage_binary.c manage_string.c manage_percent.c				\
			  manage_pointer.c manage_uns_int.c	manage_wstring.c			\
			  get_conversion.c

LL			= ft_lstadd.c ft_lstcmp.c ft_lstdel.c ft_lstmap.c ft_lstnew.c	\
			  ft_lstrev.c ft_lstsize.c ft_lstiter.c ft_lstclear.c			\
			  ft_lstprint.c	ft_lstdelone.c ft_lstaddback.c

MATHS		= ft_abs.c ft_pow.c	ft_atoi.c ft_itoa.c ft_sqrt.c ft_rec_fac.c	\
			  reverse_octet.c ft_itoa_base_uns.c ft_itoa_base_signed.c

MEMORY		= ft_bzero.c ft_memcpy.c ft_memchr.c ft_memcmp.c ft_memdel.c	\
			  ft_memset.c ft_memccpy.c ft_memmove.c	free_tab2d.c			\
			  ft_memalloc.c

PRINT		= ft_putnbr.c ft_putstr.c ft_putchar.c ft_putendl.c				\
			  ft_putwchar.c	ft_putnwstr.c ft_putnbr_fd.c ft_putstr_fd.c		\
			  ft_putendl_fd.c ft_putchar_fd.c ft_putnbr_base.c

STRING		= ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c ft_strcpy.c	\
			  ft_strdel.c ft_strdup.c ft_strequ.c ft_strlen.c ft_strmap.c	\
			  ft_strnew.c ft_strrev.c ft_strstr.c ft_strsub.c ft_strnstr.c	\
			  ft_strrchr.c ft_striter.c ft_strjoin.c ft_strlcat.c 			\
			  ft_strtrim.c ft_wstrlen.c ft_strmapi.c ft_strncat.c			\
			  ft_strncmp.c ft_strncpy.c ft_strnequ.c ft_striteri.c			\
			  ft_strsplit.c ft_str_isdigit.c ft_calc_wstrlen.c

UTILS		= ft_swap.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c	\
			  ft_islower.c ft_isprint.c ft_isupper.c ft_tolower.c			\
			  ft_toupper.c get_next_line.c
#------------------------------------------------------------------------------#

#---------------------------------| OBJECTS |----------------------------------#
OBJS	= $(SRCS:%.c=%.o)
#------------------------------------------------------------------------------#


#----------------------------------| RULES |-----------------------------------#
all : $(NAME)

%.o: %.c
	@$(CC) $(FLAGS) -c -o $@ $<
	@echo "$(BLUE)Creating object file -> $(WHITE)$(notdir $@)... $(RED)[Done]"

$(NAME) : $(OBJS)
	@echo "$(YELLOW)Creating library [$(NAME)] from object files..."
	@ar rc $(NAME) $(OBJS)			
	@ranlib $(NAME)
	@echo "$(GREEN)[$(NAME)] was successfully created"

.PHONY	:	clean fclean

clean:
	@/bin/rm -f $(OBJS)
	@echo "$(RED)[.o] files were deleted from [Project : Libft]."


fclean:
	@/bin/rm -f $(OBJS)
	@/bin/rm -f $(NAME)
	@echo "$(RED)[$(NAME)] and [.o] files were deleted from [Project : Libft].$(NOC)"

re:		fclean all
#------------------------------------------------------------------------------#
