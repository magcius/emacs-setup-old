
LEVEL   ?= ..
SUBDIRS := Pymacs ropemode ropemacs magit python-mode yasnippet google-wave auto-complete dbgr pylookup color-theme
TARGETS := espresso.el gist.el load-relative.el loc-changes.el pager.el pkgbuild-mode.el

include $(LEVEL)/Makefile.rules

espresso.el:
	curl -O http://download.savannah.gnu.org/releases-noredirect/espresso/espresso.el

gist.el:
	curl -O http://github.com/defunkt/gist.el/raw/master/gist.el

load-relative.el:
	curl -O http://github.com/rocky/emacs-load-relative/raw/master/load-relative.el

loc-changes.el:
	curl -O http://github.com/rocky/emacs-loc-changes/raw/master/loc-changes.el

pager.el:
	curl -O http://user.it.uu.se/~mic/pager.el

pkgbuild-mode.el:
	curl -O http://dev.archlinux.org/~eric/pkgbuild-mode.el
