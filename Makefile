
.PHONY: all other compile clean

all: other compile

other: 
	$(MAKE) -C vendor

compile:
	emacs -L . -L vendor -L vendor/auto-complete -batch -f batch-byte-compile *.el

clean-elc:
	rm *.elc

clean: clean-elc
	$(MAKE) -C vendor clean