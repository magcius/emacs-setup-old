
.PHONY: all download compile clean

all: download compile

download:
	if [ -e "Pymacs" ]; then \
	  cd Pymacs; \
	    git pull; \
	else \
	  git clone git://github.com/pinard/Pymacs.git Pymacs; \
	fi

compile:
	cd Pymacs; \
	  chmod -R 770 .; \
	  sed -i.backup 's/0\.23/0\.24-beta1/' Pymacs/__init__.py setup.py; \
	  python setup.py install --prefix=~/.local; \
	  chmod -R 770 .
	cp Pymacs/pymacs.el .
	emacs -L . -batch -f batch-byte-compile pymacs.el

clean:
	find . -not -name "Makefile" -exec rm -rf {} \; || true
