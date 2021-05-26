.PHONY: clean
.SUFFIXES: .c .o

vpath %.h include
vpath %.c src

%.o: %.c
	gcc -c $<
%: %.o print.o
	gcc -o $@ $^

hello: hello.o print.o
hello.o: hello.c print.h
print.o: print.c

clean:
	rm -f hello *.o
