NAME 		= libasm.a

ASM			= nasm

NFLAGS		= -f elf64

SRCS	 	= srcs/ft_strlen.s \
			  srcs/ft_strcpy.s \
			  srcs/ft_strcmp.s \
			  srcs/ft_write.s \
			  srcs/ft_read.s \
			  srcs/ft_strdup.s \

OBJS		= ${SRCS:.s=.o}

%.o: 		%.s
			${ASM} ${NFLAGS} $< -o $@

${NAME}:		${OBJS}
				ar rcs ${NAME} ${OBJS}

all:	${NAME}

clean:
		rm -f ${OBJS}

fclean: clean
		rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re
