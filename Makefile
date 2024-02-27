SHELL		=	/bin/sh

NAME		=	library/libasm.a

CC			=	gcc

CPPFLAGS	=	-Wall -Wextra -Werror	\
				-I include				\

AR			=	ar
ARFLAGS		=	crs

MKDIR		=	mkdir -p
RMDIR		=	rm -rf
RM			=	rm -f

HEADER		=	include/libasm.h

FUNCTIONS	=	strcpy.s				\
				strdup.s				\
				strjoin.s				\
				strlen.s				\

SOURCE		=	$(addprefix source/, $(FUNCTIONS))
OBJECT		=	$(addprefix object/, $(FUNCTIONS:.s=.o))
FOLDER		=	$(sort $(dir object/ $(OBJECT) $(NAME)))

.SUFFIXES	:
.SUFFIXES	:	.s .o
.PHONY		:	all clean fclean re

all			:	$(FOLDER) $(NAME)

$(NAME)		:	$(OBJECT)
				$(AR) $(ARFLAGS) $(NAME) $?

$(FOLDER)	:
				$(MKDIR) $@

object/%.o	:	source/%.s $(HEADER)
				$(CC) $(CPPFLAGS) -c $< -o $@

clean		:
				$(RM) $(OBJECT)
				$(RMDIR) $(FOLDER)

fclean		:
				$(RM) $(OBJECT)
				$(RM) $(NAME)
				$(RMDIR) $(FOLDER)

re			:	fclean all
