# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wharinas <wharinas@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/08 16:27:36 by wharinas          #+#    #+#              #
#    Updated: 2022/05/10 01:15:32 by wharinas         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# gcc -I  ft_file.c >> ft_file.o >> ar -rcs libname.a ft_file.o

NAME = libft.a

# SOURCES = ft_isdigit.c ft_putchar.c
INCLUDE_PATH = ./includes
SOURCE_PATH  = ./sources
OBJECT_PATH  = ./objects
TEST_PATH    = ./test

SOURCES = $(wildcard $(SOURCE_PATH)/*.c)
OBJECTS = $(patsubst $(SOURCE_PATH)/%.c, $(OBJECT_PATH)/%.o, $(SOURCES))
HEADER = $(INCLUDE_PATH)/libft.h

CC = gcc
CC_FLAG = -Wall -Wextra -Werror

MAKE_EXTERNAL = make -C
#===========#
# REQUIRED: #
#===========#
all: $(NAME)

$(NAME) : $(HEADER) $(OBJECTS)
	ar -rcs $(NAME) $(OBJECTS)

$(OBJECT_PATH)/%.o: $(SOURCE_PATH)/%.c
	$(CC) $(CC_FLAG) -I $(INCLUDE_PATH) -c -o $@ $<

re: fclean all

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)
#=======#
# TEST: #
#=======#
test: 
	@$(MAKE_EXTERNAL) $(TEST_PATH)

.PHONY: all clean fclean re test