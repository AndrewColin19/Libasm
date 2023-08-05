# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acolin <acolin@student.42nice.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/05 11:24:26 by acolin            #+#    #+#              #
#    Updated: 2023/08/05 18:27:13 by acolin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm

NAME_LIB = libasm.a

SRCS = 	ft_write.s \
		ft_strlen.s \
		ft_read.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_strdup.s \
		

SRCS_TEST = main.c

CC = gcc

CFLAGS = -Wall -Wextra -Werror

NASM = nasm

UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        NASMFLAGS = -f elf64
    endif
    ifeq ($(UNAME_S),Darwin)
        NASMFLAGS = -f macho64
    endif

OBJ = $(SRCS:.s=.o)

%.o : %.s
	$(NASM) $(NASMFLAGS) $< -o $@

all : $(NAME)

$(NAME) : $(OBJ)
	ar rcs $(NAME_LIB) $(OBJ)

test :
	$(CC) $(CFLAGS) main.c $(NAME_LIB) 
	
clean :
	rm -f $(OBJ) main.o

fclean : clean
	rm -f $(NAME_LIB)
	rm -f ./a.out

re : fclean all