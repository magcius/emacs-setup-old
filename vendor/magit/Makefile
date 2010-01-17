
.PHONY: all download compile clean

all: download compile

download:
	if [ -e "mainline" ]; then \
	  cd mainline; \
	    git pull; \
	else \
	  git clone git://gitorious.org/magit/mainline.git mainline; \
	fi

compile:
	cp mainline/magit.el .
	emacs -L . -batch -f batch-byte-compile magit.el

clean:
	find . -not -name "Makefile" -exec rm -rf {} \; || true
