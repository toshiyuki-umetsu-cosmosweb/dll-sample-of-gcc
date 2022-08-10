TARGET = libfunc.so libfuncraw.so libfuncextra.so

.PHONY : all clean


all : $(TARGET)

libfunc.so : ../lib/libfunc.a func2.o
	$(CC) $(CFLAGS) --shared -fPIC -o $@ $^

libfuncraw.so : ../lib/libfunc.a func2.o
	#$(CC) --shared -o $@ -Wl,--whole-archive $^ -Wl,--no-whole-archive
	$(CC) --shared -fPIC -o $@ -Wl,--whole-archive $^  -Wl,--no-whole-archive

libfuncextra.so : ../lib/libfunc.a func2.o
	ar x ../lib/libfunc.a
	$(CC) --shared -fPIC -o $@ *.o


../lib/libfunc.a :
	cd ../lib && make

clean:
	rm -f $(TARGET) *.o

