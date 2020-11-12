all : ZTors.pdf
ZTors.pdf : ZTors.tex papers.bib
	latexmk -pdf ZTors
clean :
	rm -f *.fls *.log *.fdb_latexmk *.blg *.bbl *.brf \
		*.run.xml *.bcf *.aux *.toc *.out *.synctex*
