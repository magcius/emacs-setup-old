
.PHONY: all download compile clean

all: download compile

download:
	if [ -e "ropemacs" ]; then \
	  cd ropemacs; \
	    hg pull; \
	    hg update; \
	else \
	  hg clone http://bitbucket.org/agr/ropemacs ropemacs; \
	fi; \

	if [ -e "ropemode" ]; then \
	  cd ropemode; \
	    hg pull; \
	    hg update; \
	else \
	  hg clone http://bitbucket.org/agr/ropemode ropemode; \
	fi
	[ -e "ropemacs/ropemode" ] && rm -r ropemacs/ropemode || true
	(cd ropemacs; ln -s ../ropemode/ropemode .)

compile:
	cd ropemacs; python setup.py install --prefix=~/.local

clean:
	find . -not -name "Makefile" -exec rm -rf {} \; || true
