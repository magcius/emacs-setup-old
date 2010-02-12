
.PHONY: all download compile clean

all: compile

download:
	if [ -e "pylookup" ]; then \
	  cd pylookup; \
	    git pull; \
	else \
	  git clone git://github.com/tsgates/pylookup.git pylookup; \
	fi

compile: download
	cp -r pylookup/* .
	emacs -L . -batch -f batch-byte-compile pylookup.el

clean:
	rm pylookup.el pylookup.elc
