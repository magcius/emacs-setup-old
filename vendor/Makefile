
DIR_TARGETS       = Pymacs ropemacs magit python-mode yasnippet google-wave pkgbuild-mode js2 auto-complete dbgr cedet pylookup
DIR_CLEAN_TARGETS = $(DIR_TARGETS:=.clean)

EL_TARGETS        = *.el
EL_CLEAN_TARGETS  = $(EL_TARGETS:=.clean)

.PHONY: all clean clean-elc compile other $(EL_TARGETS) $(DIR_TARGETS)

all: gist.el color-theme.el pager.el load-relative.el loc-changes.el other compile

gist.el:
	curl -O http://github.com/defunkt/gist.el/raw/master/gist.el

load-relative.el:
	curl -O http://github.com/rocky/emacs-load-relative/raw/master/load-relative.el

loc-changes.el:
	curl -O http://github.com/rocky/emacs-loc-changes/raw/master/loc-changes.el

color-theme.el:
	curl -O http://mirror.its.uidaho.edu/pub/savannah/color-theme/color-theme-6.6.0.tar.gz
	tar xzf color-theme-6.6.0.tar.gz
	rm color-theme-6.6.0.tar.gz
	cp -r color-theme-6.6.0/color-theme.el color-theme-6.6.0/themes .
	rm -r color-theme-6.6.0

pager.el:
	curl -O http://user.it.uu.se/~mic/pager.el

other: $(DIR_TARGETS)

$(EL_TARGETS):
	emacs -L . -batch -f batch-byte-compile $@

$(EL_CLEAN_TARGETS):
	rm $(@:.clean=)

compile: $(EL_TARGETS)

clean-elc: $(ELC_CLEAN_TARGETS)

$(DIR_TARGETS):
	$(MAKE) -C $@

$(DIR_CLEAN_TARGETS):
	$(MAKE) -C $(@:.clean=) clean

clean: clean-elc $(DIR_CLEAN_TARGETS)
