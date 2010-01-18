
.PHONY: all download compile clean

all: download compile

download:
	if [ -e "google-wave-client" ]; then \
	  cd google-wave-client; \
	    hg pull; \
	    hg update; \
	else \
	  hg clone https://wave-client-for-emacs.googlecode.com/hg/ google-wave-client; \
	fi
	cp google-wave-client/lisp/*.el .

compile:
	emacs -Q -L . -batch -f batch-byte-compile *.el

clean:
	find . -not -name "Makefile" -exec rm -rf {} \; || true
