RUBBER=rubber -Wrefs -Wmisc
BIBTEX=bibtex
#RUBBER=rubber -Wall

pdf: thesis.pdf
.PHONY: pdf

thesis.pdf:
	./lint
	$(RUBBER) -v --pdf --force thesis
.PHONY: thesis.pdf

clean:
	$(RUBBER) --clean --pdf thesis.tex
.PHONY: clean

