
TARGETS = Pymacs ropemacs magit auto-complete python-mode yasnippet
CLEAN_TARGETS = $(TARGETS:=.clean)

.PHONY: all clean compile $(TARGETS) $(CLEAN_TARGETS)

all: compile

compile: $(TARGETS)
	emacs -L . -batch -f batch-byte-compile *.el

$(TARGETS):
	$(MAKE) -C $@

clean: $(CLEAN_TARGETS)
	rm *.elc

$(CLEAN_TARGETS):
	make -C $(@:.clean=) clean
