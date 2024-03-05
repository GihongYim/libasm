NAME = fib
NASM = nasm
CC = gcc
COMPILEFLAG = -f macho64 -g
LSYSTEM = -lSystem
LDFLAG = -macosx_version_min 10.15 -e main

SRCS = fib.s
OBJS = $(SRCS:.s=.o)
ALL : $(SRCS)
	$(NASM) $(COMPILEFLAG) -o $(OBJS) $(SRCS)
# ld $(LDFLAG) -o $(NAME) $(OBJS)
	$(CC)  -o $(NAME) $(OBJS) $(LSYSTEM)

clean : $(OBJS) $(NAME)
	rm $(OBJS) $(NAME)



