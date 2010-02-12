
.PHONY: all clean

all: compile

compile:
	emacs -L . -batch -f batch-byte-compile *.el

clean:
	rm -r *.elc