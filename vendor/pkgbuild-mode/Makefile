
.PHONY: all download compile clean

all: download compile

download:
	curl -O http://dev.archlinux.org/~eric/pkgbuild-mode.el

compile:
	emacs -L . -batch -f batch-byte-compile pkgbuild-mode.el

clean:
	rm *.el *.elc
