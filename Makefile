NAME = average
NASM = nasm
CC = gcc
COMPILEFLAG = -f macho64 -g
LSYSTEM = -lSystem
LDFLAG = -macosx_version_min 10.15 -e main

SRCS = average.s
OBJS = $(SRCS:.s=.o)


all : $(SRCS)
	$(NASM) $(COMPILEFLAG) -o $(OBJS) $(SRCS)
# ld $(LDFLAG) -o $(NAME) $(OBJS)
	$(CC)  -o $(NAME) $(OBJS) $(LSYSTEM)

clean :
	rm $(OBJS)

fclean:
	make clean
	rm $(NAME)



