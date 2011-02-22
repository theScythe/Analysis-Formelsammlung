# Makefile zum Erstellen von PDF-Dokumenten aus LaTeX-Files
# Benötigte Softwarepakete: pdflatex, rubber

all: pdf clean

pdf:
	for datei in $$(ls *tex | cut -d \. -f 1) ; do make $$datei.pdf ; done

%.pdf: %.tex
	rubber -m pdftex $<

clean:
	rm -f *.toc *.aux *.log

cleanall:
	rm -f *.toc *.pdf *.aux *.log

.PHONY: all pdf clean cleanall
.SILENT: pdf

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
