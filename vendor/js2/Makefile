
.PHONY: all download compile clean

all: download compile

download:
	curl -O http://js2-mode.googlecode.com/svn/trunk/js2-mode.el

compile:
	emacs -batch -f batch-byte-compile js2-mode.el

clean:
	rm js2-mode.el js2-mode.elc