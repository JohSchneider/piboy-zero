EXECS = retrogame
CC    = gcc $(CFLAGS) -Wall -O3 -fomit-frame-pointer -funroll-loops -s

all: $(EXECS)

retrogame: retrogame.c
	$(CC) $< -o $@
	strip $@

install:
	mv $(EXECS) /usr/local/bin
	cp retrogame.init.d /etc/init.d/retrogame
	update-rc.d retrogame defaults

clean:
	rm -f $(EXECS)
