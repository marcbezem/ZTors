all : ZTors.pdf
ZTors.pdf : ZTors.tex papers.bib
	latexmk -pdf ZTors
clean :
	latexmk -c ZTors ; rm ZTors.run.xml
