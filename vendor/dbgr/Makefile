
.PHONY: all download compile clean

all: download compile

download:
	if [ -e "emacs-dbgr" ]; then \
	  cd emacs-dbgr; \
	    git pull; \
	else \
	  git clone git://github.com/rocky/emacs-dbgr.git emacs-dbgr; \
	fi

compile:
	cp -r emacs-dbgr/dbgr/ emacs-dbgr/dbgr.el .
	find dbgr -name "*.el" -exec emacs -L .. -L . -L dbgr -batch -f batch-byte-compile {} +

clean:
	rm dbgr.el dbgr.elc
	rm -r emacs-dbgr/ dbgr/
