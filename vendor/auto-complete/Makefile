
.PHONY: all download compile clean

all: download compile

download:
	if [ -e "auto-complete" ]; then \
	  cd auto-complete; \
	    git pull; \
	else \
	  git clone git://github.com/m2ym/auto-complete.git auto-complete; \
	fi

compile:
	cp auto-complete/*.el .
	emacs -L . -batch -f batch-byte-compile *.el

clean:
	find . -not -name "Makefile" -exec rm -rf {} \; || true
