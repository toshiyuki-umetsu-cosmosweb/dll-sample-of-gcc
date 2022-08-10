TARGET = sample
CFLAGS = -I../lib -Wl,-L../dll 

.PHONY : all clean

all: $(TARGET)

$(TARGET) : sample.o
	$(CC) $(CFLAGS) -o $@ $^ -lfuncextra

%.o : %.c
	$(CC) -c $(CFLAGS) -o $@ $<


clean:
	rm -f $(TARGET) *.o
