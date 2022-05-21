# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfabian <cfabian@student.42wolfsburg.de>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/03 14:57:03 by cfabian           #+#    #+#              #
#    Updated: 2022/05/16 20:52:31 by cfabian          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_DIR = src
SRC	= 	$(SRC_DIR)/main.c
		
OBJ_DIR = obj
OBJ	= $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))
CFLAGS	= -Wall -Werror -Wextra
CC = gcc
NAME = philo

all	: $(NAME)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c $(OBJ_DIR)
	@$(CC) $(CFLAGS) -g -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)
	
$(NAME)	: $(OBJ)
#	$(CC) $(OBJ) -lpthread -fsanitize=thread -g -o $(NAME)
	$(CC) $(OBJ) -lpthread -g -o $(NAME)

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all

test : $(NAME)
	./$(NAME) test

threadcheck	: $(OBJ)
	$(CC) $(OBJ) -lpthread -fsanitize=thread -g -o $(NAME)
	./philo 4 410 200 200 3

memcheck: all
	lost = valgrind ./philo 4 410 200 200 1 2>&1 | grep "definitely lost" | awk '{print $4}' 

norm:
	norminette $(SRC) $(INCL)

.PHONY: all memcheck test bonus clean fclean re norm
