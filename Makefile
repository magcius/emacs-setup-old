
DIR_TARGETS       = vendor
DIR_CLEAN_TARGETS = $(DIR_TARGETS:=.clean)

EL_TARGETS = *.el
EL_CLEAN_TARGETS = $(EL_TARGETS:=.clean)

.PHONY: all clean clean-elc compile other $(EL_TARGETS) $(DIR_TARGETS)

all: other $(EL_TARGETS)

other: $(DIR_TARGETS)

compile: $(EL_TARGETS)

$(EL_TARGETS):
	emacs -L . -L vendor -L vendor/auto-complete -batch -f batch-byte-compile $@

$(EL_CLEAN_TARGETS):
	rm $(@:.clean=)

clean-elc: $(EL_CLEAN_TARGETS)

$(DIR_TARGETS):
	$(MAKE) -C $@

$(DIR_CLEAN_TARGETS):
	$(MAKE) -C $(@:.clean=) clean

clean: clean-elc $(DIR_CLEAN_TARGETS)
