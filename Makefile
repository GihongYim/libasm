NAME = hola
NASM = nasm
COMPILEFLAG = -f macho64 -g
LDFLAG = -macosx_version_min 10.7.0 -e _main -lSystem

SRCS = hola.s
OBJS = $(SRCS:.s=.o)
ALL : $(SRCS)
	$(NASM) $(COMPILEFLAG) $(SRCS)
	ld $(LDFLAG) -o $(NAME) $(OBJS)

clean : $(OBJS) $(NAME)
	rm $(OBJS) $(NAME)



