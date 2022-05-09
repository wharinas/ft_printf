# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wharinas <wharinas@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/08 13:14:28 by wharinas          #+#    #+#              #
#    Updated: 2022/05/08 16:21:03 by wharinas         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs

# REQUIRED: this command required on rules.

all: $(NAME)

$(NAME):
	echo "dummy name ($(NAME))"


clean:
	echo "dummy clean"

fclean:
	echo "dummy fclean"
	
re: fclean all


test:
	@make all test/main.c
# make -C ./test

# FOR DEV
# norm:
# 	norminette -R checkForbiddenSourceHeader
# gitm:
# 	git add -A
# 	git commit -m $m
# 	git push


.PHONY:	all clean fclean re norm test