# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vduchi <vduchi@student.42barcelon>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/22 22:11:19 by vduchi            #+#    #+#              #
#    Updated: 2022/06/19 12:17:14 by vduchi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = 		fdf
HEAD = 		fdf.h
LIBFT = 	libft.a
SRCSDIR =	src
OBJDIR =	obj
DIRS =		include/ libft/

SRCS = 		src/main.c	src/read_file.c
OBJS := $(patsubst $(SRCSDIR)/%,$(OBJDIR)/%,$(SRCS:.c=.o))
#OBJS_LIB = ./libft/*.o

CFLAGS += 	-Wall -Wextra -Werror $(addprefix -I , $(DIRS))
LDFLAGS = 	-L/ -lft

$(OBJDIR)/%.o : $(SRCSDIR)/%.c
	cc $(CFLAGS) -c $< -o $@

all:		$(NAME)

$(NAME): 	$(OBJDIR) $(LIBFT) $(OBJS)
	gcc $(OBJS) $(LIBFT) -o $@
	@echo "Library created!"

$(LIBFT):
	@make -C libft
	@mv libft/libft.a .

$(OBJDIR):
	@mkdir $@
	@echo Obj folder created!

clean:
	@rm -rf $(OBJDIR)

fclean: 	clean
	@rm -f $(NAME) $(LIBFT)
	@make -C libft fclean
	@echo "All files cleaned"

re: 		fclean all

#leaks:
#	leaks -atExit -- "nombre del executable" "nombre de argumentos"

.PHONY: all clean fclean re
