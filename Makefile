
.PHONY: all watch

all: hybrid-suspend.pdf

hybrid-suspend.pdf: hybrid-suspend.ltx
	latexmk -pdf $<

watch:
	latexmk -pvc -pdf hybrid-suspend.ltx
