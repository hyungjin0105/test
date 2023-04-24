CC=gcc
CFLAGS=-c

all:market

market: manager.o product.o market.c
	$(CC) manager.o product.o market.c -o market

manager.o: manager.c manager.h
	$(CC) $(CFLAGS) manager.c

product.o: product.c product.h
	$(CC) $(CFLAGS) product.c

clean:
	rm -rf *.o market
