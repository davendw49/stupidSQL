CC = gcc
CFLAGS = -Wall -c
LFLAGS = -Wall

OBJS = splittest.o
OUTPUT = -o run

all: test

test: $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) $(OUTPUT)

splittest.o: splittest.c
	$(CC) $(CFLAGS) splittest.c

clean:
	rm -f $(OBJS) run
