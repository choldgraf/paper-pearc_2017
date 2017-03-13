LATEX=pdflatex
BIBTEX=bibtex
REPORT=paper

SRCS=$(wildcard *.tex)
REFS=$(wildcard *.bib)
FIGS=$(wildcard figures/*)

all: $(SRCS) $(REFS) $(FIGS)
	$(LATEX) $(REPORT)
	$(BIBTEX) $(REPORT)
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)

clean:
	rm -f *~ *.dvi *.aux *.out *.log *.blg *.bbl $(REPORT).ps $(REPORT).pdf sections/*.aux comment.cut

pwd=$(shell pwd)
## To make the paper using the jupyter/datascience-notebook Docker image:
docker: acmart.cls
	docker run --rm -v $(pwd):/home/jovyan/work jupyter/datascience-notebook make

## Download the latest version of ACM Master Article Template
## http://www.acm.org/publications/proceedings-template
ACMURL=http://www.acm.org/binaries/content/assets/publications/consolidated-tex-template/acmart.zip
acmart.cls:
	(cd /tmp && curl -s $(ACMURL) > acmart.zip && unzip -o acmart.zip)
	(cd /tmp/acmart && docker run --rm -v /tmp/acmart:/home/jovyan/work jupyter/datascience-notebook latex acmart.ins)
	cp -f /tmp/acmart/*.bst /tmp/acmart/acmart.cls .
