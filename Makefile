SubDirs = lib dll test

.PHONY : all clean

all :
	for Dir in $(SubDirs) ; \
	do \
	    make -C $$Dir ; \
	done

clean :
	for Dir in $(SubDirs) ; \
	do \
	    make -C $$Dir clean; \
	done
