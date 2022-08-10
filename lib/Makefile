TARGET = libfunc.a
OBJS = func.o

.PHONY : all clean

all : $(TARGET)

$(TARGET) : $(OBJS)
	$(AR) crv $@ $^

%.o : %.c
	$(CC) -c $(CFLAGS) -o $@ $<

clean :
	rm -f $(TARGET) *.o
