pdf : main.pdf

main.pdf : main.tex main.bib
	@biber main > /dev/null || true
	@pdflatex -interaction=nonstopmode main > /dev/null || true
	@pplatex -i main.log

main.bib : main.aux
	@bibgetter main.aux > main.bib
