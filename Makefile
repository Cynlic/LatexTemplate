paper.pdf: temp.md
	pandoc --filter pandoc-citeproc temp.md -o collected.tex
	xelatex template.tex
	biber template
	rm temp.md
	xelatex template.tex -o paper.pdf

temp.md: Part1.md Part2.md
	cat Part1.md Part2.md > temp.md
