all : ZTors.pdf
arxiv : arxiv.tar.gz
ZTors.pdf : ZTors.tex macros.tex papers.bib numeric-dashed.bbx
	latexmk -pdf ZTors
arxiv.tar.gz : ZTors.tex macros.tex ZTors.bbl numeric-dashed.bbx
	tar cf arxiv.tar.gz $^
clean :
	rm -f *.fls *.log *.fdb_latexmk *.blg *.bbl *.brf \
		*.run.xml *.bcf *.aux *.toc *.out *.synctex* arxiv.tar.gz
