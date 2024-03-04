NAME = helloworld
NASM = nasm
COMPILEFLAG = -f macho64
LDFLAG = -macosx_version_min 10.7.0

SRCS = helloworld.s
OBJS = $(SRCS:.s=.o)
ALL : $(SRCS)
	$(NASM) $(COMPILEFLAG) $(SRCS)
	ld $(LDFLAG) -o $(NAME) $(OBJS)

clean : $(OBJS) $(NAME)
	rm $(OBJS) $(NAME)



