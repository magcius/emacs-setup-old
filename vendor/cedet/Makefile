
.PHONY: all download compile clean

all: download compile

download:
	wget http://downloads.sourceforge.net/project/cedet/cedet/1.0pre6/cedet-1.0pre6.tar.gz
	tar xzf cedet-1.0pre6.tar.gz
	rm cedet-1.0pre6.tar.gz

compile:
	$(MAKE) -C cedet-1.0pre6
	emacs -batch -f batch-byte-compile load-cedet.el

clean:
	rm *.elc
	rm -r cedet-1.0pre6
