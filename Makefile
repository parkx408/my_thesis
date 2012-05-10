RUBBER=rubber -Wrefs -Wmisc 

pdf: thesis.pdf
.PHONY: pdf

thesis.pdf:
	./lint
	$(RUBBER) --pdf thesis_phd.tex
.PHONY: thesis.pdf

clean:
	$(RUBBER) --pdf --clean thesis_phd.tex
.PHONY: clean

