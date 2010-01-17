
.PHONY: all download compile clean

all: download compile

download:
	curl -O http://yasnippet.googlecode.com/files/yasnippet-0.6.1c.tar.bz2
	tar xjf yasnippet-0.6.1c.tar.bz2
	cp -r yasnippet-0.6.1c/* .
	rm -r yasnippet-0.6.1c
	rm yasnippet-0.6.1c.tar.bz2

compile:
	emacs -L . -batch -f batch-byte-compile *.el

clean:
	rm *.el *.elc
	rm -r snippets
