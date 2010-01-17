
TARGETS = Pymacs ropemacs magit auto-complete python-mode yasnippet
CLEAN_TARGETS = $(TARGETS:=.clean)

.PHONY: all clean compile $(TARGETS) $(CLEAN_TARGETS)

all: gist.el color-theme.el pager.el compile

gist.el:
	curl -O http://github.com/defunkt/gist.el/raw/master/gist.el

color-theme.el:
	curl -O http://mirror.its.uidaho.edu/pub/savannah/color-theme/color-theme-6.6.0.tar.gz
	tar xzf color-theme-6.6.0.tar.gz
	rm color-theme-6.6.0.tar.gz
	cp -r color-theme-6.6.0/color-theme.el color-theme-6.6.0/themes .
	rm -r color-theme-6.6.0

pager.el:
	curl -O http://user.it.uu.se/~mic/pager.el

compile: $(TARGETS)
	emacs -L . -batch -f batch-byte-compile *.el

$(TARGETS):
	$(MAKE) -C $@

clean: $(CLEAN_TARGETS)
	rm *.elc

$(CLEAN_TARGETS):
	make -C $(@:.clean=) clean
