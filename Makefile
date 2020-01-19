# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: settaqi <settaqi@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/18 21:01:50 by settaqi           #+#    #+#              #
#    Updated: 2020/01/18 23:35:42 by settaqi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libasm.a

objects = $(wildcard *.o)

all: $(NAME)

compile:
	@nasm -f macho64 ft_strcpy.s
	@nasm -f macho64 ft_strcmp.s
	@nasm -f macho64 ft_strdup.s
	@nasm -f macho64 ft_strlen.s
	@nasm -f macho64 ft_read.s
	@nasm -f macho64 ft_write.s

$(NAME): compile
	@ar rc $(NAME) $(objects)
	@ranlib $(NAME)

clean:
	@/bin/rm -f $(objects)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all

bonus:

.PHONY: clean bonus fclean all re