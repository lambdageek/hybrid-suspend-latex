
.PHONY: all watch

TEX_FLAGS=-shell-escape

all: hybrid-suspend.pdf hybrid-suspend-deck.pdf

hybrid-suspend.pdf: hybrid-suspend.ltx
	latexmk -pdf $(TEX_FLAGS) $<

hybrid-suspend.pdf: hybrid-suspend-deck.ltx
	latexmk -pdf $(TEX_FLAGS) $<

watch:
	latexmk -pvc -pdf $(TEX_FLAGS) hybrid-suspend.ltx

watch-deck:
	latexmk -pvc -pdf $(TEX_FLAGS) hybrid-suspend-deck.ltx

