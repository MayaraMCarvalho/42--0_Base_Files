# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: macarval <macarval@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/19 16:33:22 by macarval          #+#    #+#              #
#    Updated: 2024/09/17 19:36:01 by macarval         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=

SRCS		= main.cpp *.cpp

VPATH		= src/
OBJS_PATH	= obj
INCLUDE		= -I./include

FLAGS		= -g3 -Wall -Wextra -Werror -g -std=c++98 -Wpedantic
CC			= c++

#colors
GREEN		= \033[0;32m
YELLOW		= \033[0;33m
BLUE		= \033[0;34m
MAGENTA		= \033[0;35m
CYAN		= \033[0;36m
RESET		= \033[0m

# Bold
BRED		= \033[1;31m
BGREEN		= \033[1;32m
BYELLOW		= \033[1;33m
BBLUE		= \033[1;34m
BPURPLE		= \033[1;35m
BCYAN		= \033[1;36m
BWHITE		= \033[1;37m

OBJS 		= $(addprefix $(OBJS_PATH)/, $(SRCS:.cpp=.o))

all: 		$(NAME)

$(NAME): 	$(OBJS_PATH) $(OBJS)
			@$(CC) $(FLAGS) $(OBJS) -o $(NAME)
			@echo "\n$(CYAN)$(NAME): $(GREEN)Done!$(RESET)\n"

$(OBJS_PATH):
			@mkdir -p $(OBJS_PATH)

$(OBJS_PATH)/%.o: %.cpp
			@$(CC) $(FLAGS) $(INCLUDE) -c $< -o $@
			@echo -n "$(YELLOW)Generating $(CYAN)$(NAME) $(YELLOW)objects..." $@
			@echo -n "\n"

clean:
			@rm -rf $(OBJS_PATH)
			@echo "$(CYAN)$(NAME): $(GREEN)Clean done!$(RESET)"

fclean:		clean
			@rm -f $(NAME)
			@echo "$(CYAN)$(NAME): $(GREEN)Full clean done!$(RESET)"


re:			fclean all

comp:
			clear
			@make -s re
			@./$(NAME)

val:
			clear
			@make -s re
			@valgrind ./$(NAME)

git:
			clear
			@make fclean
			git add .
			git status
			@echo "$(GREEN)Enter cpp list:"
			@read list; \
			echo -n "\n"; \
			echo "$(YELLOW)Enter the exercise:"; \
			read ex; \
			echo -n "\n"; \
			echo "$(MAGENTA)Choose status:"; \
			echo "1. Init."; \
			echo "2. In Progress..."; \
			echo "3. Done!!"; \
			echo "4. Correction"; \
			read status_choice; \
			case $$status_choice in \
						1) status="Init." ;; \
						2) status="In Progress..." ;; \
						3) status="Done!!" ;; \
						4) status="Correction" ;; \
						*) echo "Escolha inválida"; exit 1 ;; \
			esac; \
			echo "$(BLUE)"; \
			git commit -m "[OPP$$list]: ex$$ex $$status"
			git push

.PHONY:		all re clean fclean comp val git
