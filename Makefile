LATEX = pdflatex
BIBTEX = bibtex
RM = rm -f
FILE = tcc2-imeter

all:	
		$(LATEX) $(FILE)
		$(BIBTEX) $(FILE)
		$(LATEX) $(FILE)
		$(LATEX) $(FILE)
		@echo ---------------------------------------------------
		@echo Ps: done.
		pdftk tcc2-imeter.pdf img/sch-condicionador.pdf img/sch-controle.pdf cat output tcc2-imeter.pdf.tmp
		mv tcc2-imeter.pdf.tmp tcc2-imeter.pdf

clean:	
		$(RM) $(FILE).aux $(FILE).log $(FILE).out $(FILE).ps $(FILE).pdf $(FILE).toc $(FILE).dvi $(FILE).lof $(FILE).bbl $(FILE).lot $(FILE).blg *~ *backup
		@echo ---------------------------------------------------
		@echo Directory cleaned
