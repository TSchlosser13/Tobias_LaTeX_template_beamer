# Makefile


.PHONY: clean

Tobias_LaTeX_template_beamer.pdf: Tobias_LaTeX_template_beamer.tex
	pdflatex -synctex=1 -interaction=nonstopmode -shell-escape $<
	bibtex Tobias_LaTeX_template_beamer
	pdflatex -synctex=1 -interaction=nonstopmode -shell-escape $<
	pdflatex -synctex=1 -interaction=nonstopmode -shell-escape $<

clean:
	find . -maxdepth 2       \
		! -name "*.bib"      \
		! -name "*.bst"      \
		! -name "*.cls"      \
		! -name "*.dat"      \
		! -name "*.jpg"      \
		! -name "*.md"       \
		! -name "*.pdf"      \
		! -name "*.png"      \
		! -name "*.sty"      \
		! -name "*.tex"      \
		! -name "*.txt"      \
		! -name ".gitignore" \
		! -name "Makefile"   \
		-type f -delete

	rm -f Tobias_LaTeX_template_beamer.{pdf,png}
	rm -f figs/_TikZ/Tobias_LaTeX_template_beamer-figure*.*


