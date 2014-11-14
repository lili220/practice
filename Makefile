.PHONY:clean
CC = gcc
CFLAGS = -Wall -g
BIN = test
OBJ = test.c
$(BIN):$(OBJ)
	$(CC) $(CFLAGS) -o $@ $^
%.o:%.c
	$(CC) $(CFLAGS) -c -o $@ $<
clean:
	rm -rf *.o $(BIN)
