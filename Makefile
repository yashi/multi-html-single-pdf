EMACS ?= emacs

all: pdf.tex index.html chapter1.html chapter2.html

%.html: %.org export.el
	$(EMACS) $< --batch -l export.el -f to-html

pdf.tex: pdf.org chapter1.org chapter2.org export.el
	$(EMACS) pdf.org --batch -l export.el -f to-latex

clean:
	$(RM) *.html *.tex *~
