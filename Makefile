all: main.pdf

ast.eps: ast.gv
	dot -Tps2 ast.gv > ast.eps

main.pdf: main.tex *.tex *.bib images/* ast.eps
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	rm main.aux main.bbl main.blg main.lof main.log main.pdf main.toc ast-eps-converted-to.pdf
