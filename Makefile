NAME = libasm.a
NASM = nasm
CC = gcc
RMFLAGS = -f
NASMFLAG = -f macho64 -g
LSYSTEM = -lSystem
LDFLAG = -macosx_version_min 10.15 -e main

SRCS = ft_strlen.s
OBJS = $(SRCS:.s=.o)

AR = ar
ARFLAGS = rcs

all : $(NAME)

bonus:
	make WITH_BONUS=1 all

$(NAME) : $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

%.o : %.s 
	$(NASM) $(NASMFLAG) -o $(OBJS) $(SRCS)

clean :
	rm $(RMFLAGS) $(OBJS) $(BONUS_OBJS)

fclean : clean
	rm $(RMFLAGS) $(NAME)

re :
	make fclean
	make all
	



# all : $(SRCS)
# 	$(NASM) $(COMPILEFLAG) -o $(OBJS) $(SRCS)
# # ld $(LDFLAG) -o $(NAME) $(OBJS)
# 	$(CC)  -o $(NAME) $(OBJS) $(LSYSTEM)

# clean :
# 	rm $(OBJS)

# fclean:
# 	make clean
# 	rm $(NAME)



