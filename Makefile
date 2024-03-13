NAME = libasm.a
NASM = nasm
CC = gcc
RMFLAGS = -f
NASMFLAG = -f macho64 -g
LSYSTEM = -lSystem
LDFLAG = -macosx_version_min 10.15 -e main

SRCS = ft_strlen.s \
		ft_strcpy.s \
		ft_write.s \
		ft_read.s
OBJS = $(SRCS:.s=.o)

AR = ar
ARFLAGS = rcs

all : $(NAME) $(SRCS)

bonus:
	make WITH_BONUS=1 all

$(NAME) : $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

%.o : %.s  libasm.h
	$(NASM) $(NASMFLAG) $< -I libasm.h

clean :
	rm $(RMFLAGS) $(OBJS) $(BONUS_OBJS)

fclean : clean
	rm $(RMFLAGS) $(NAME)

re :
	make fclean
	make all


