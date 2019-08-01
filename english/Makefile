PDFLATEX=pdflatex
BIBTEX=bibtex
LTX=$(PDFLATEX) -shell-escape -interaction=nonstopmode

srcs=main.tex main.bib

all: main.pdf

.PHONY: all clean

clean: 
	rm -fr _minted-* *.aux *.bbl *.blg *.brf *.out *.synctex.gz *.log main.pdf *.idx *.ilg *.ind *.lof *.lot *.lol *.xdy *.toc *.acn *.glo *.ist *.prv _region*  *~ auto imgs/*.tmp.pdf {imgs,plots}/*-eps-converted-to.pdf; 


main.aux: $(srcs)
	$(LTX) main.tex; $(LTX) main.tex || true

main.blg: main.aux $(srcs)
	$(BIBTEX) main.aux

main.pdf: $(srcs) main.aux main.blg
	$(LTX) main.tex; \
	$(LTX) main.tex || true
