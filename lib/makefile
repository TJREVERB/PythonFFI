CC = gcc

default: libants.a

libants.a: ants.o
	ar rcs $@ $^
    
ants.o: ants.c ants-api.h i2c.h i2c.c
	$(CC) -c $<

clean:
	rm *.o *.a
