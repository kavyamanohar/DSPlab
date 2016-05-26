default: pdf
all: clean pdf html

pdf: clean DCDSPSimulation.pdf

html:
	latex2html -html_version 4.0,latin1,unicode DCDSPSimulation.tex

%.pdf: DCDSPSimulation.tex
	xelatex $<
	xelatex $<	# to include generated ToC

clean:
	rm -f DCDSPSimulation.pdf DCDSPSimulation.aux DCDSPSimulation.toc DCDSPSimulation.log
