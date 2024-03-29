# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdouiri <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/03 18:21:22 by mdouiri           #+#    #+#              #
#    Updated: 2021/12/03 18:25:22 by mdouiri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = action.c action2.c utils.c bestmove.c bouge.c ft_printf.c free.c \
			init.c 3_5numbers.c lisbis.c tri.c parsing.c main.c list.c
SRCS_BONUS = checker.c checker_utils.c checker_utils2.c action.c action2.c utils.c bestmove.c bouge.c ft_printf.c free.c \
			init.c 3_5numbers.c lisbis.c tri.c list.c parsing.c get_next_line.c get_next_line_utils.c
OBJS 		= ${SRCS:.c=.o}
OBJS_BONUS = ${SRCS_BONUS:.c=.o}

CC 			= gcc -g 
CFLAGS		= -Wall -Wextra -Werror -g
RM			= rm -f
NAME		= push_swap
NAME_B		= checker
all: 		${NAME}

.c.o:
			${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME): 	$(OBJS)
					${CC} $(CFLAGS) -o $(NAME) $(OBJS)

bonus:		${NAME_B}

${NAME_B}: ${OBJS_BONUS}
					${CC} $(CFLAGS) -o $(NAME_B) $(OBJS_BONUS)


clean:
			${RM} ${OBJS} $(OBJS_BONUS)

fclean: 	clean
			${RM} ${NAME} $(NAME_B)

re: 		fclean all
