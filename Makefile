paper.pdf: Part1.md
	pandoc --filter pandoc-citeproc Part1.md -o Part1.tex
	xelatex template.tex
	biber template
	xelatex template.tex -o paper.pdf

