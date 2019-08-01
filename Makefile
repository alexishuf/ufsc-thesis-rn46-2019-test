define do_make
	cd "$(1)" &&  latexmk $(2) -pdf -use-make -cd main.tex
endef

define do_clean
	cd "$(1)" && latexmk -cd -CA
	cd "$(1)" && rm -f main.pdf *.dvi *.bbl *.nav *.ilg *.idx *.64 main-logo.pdf
	cd "$(1)" && rm -fr auto _minted-*
endef

all: 
	$(call do_make,english,-shell-escape)
	$(call do_make,no-embeddedlogo,)

clean: 
	$(call do_clean,.)
	$(call do_clean,english)
	$(call do_clean,no-embeddedlogo)

.PHONY: all clean


