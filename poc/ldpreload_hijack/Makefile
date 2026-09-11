CC      = gcc
CFLAGS  = -Wall -fPIC
TARGET  = libhijack.so
SRC     = libhijack.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -shared -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)

.PHONY: all clean