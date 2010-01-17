
.PHONY: all download compile clean

all: download compile

download:
	if [ -e "python-mode" ]; then \
	  cd python-mode; \
	    bzr up; \
	else \
	  bzr branch lp:python-mode; \
	fi

compile:
	cp python-mode/*.el .
	emacs --batch -f batch-byte-compile *.el

clean:
	find . -not -name "Makefile" -exec rm -rf {} \; || true
