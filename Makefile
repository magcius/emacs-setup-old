
.PHONY: all other compile clean

all: compile

other: 
	make -C vendor

compile: other
	emacs -L . -L vendor -L vendor/auto-complete -batch -f batch-byte-compile *.el

clean:
	make -C vendor clean