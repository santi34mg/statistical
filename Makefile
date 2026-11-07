
OUT = build
.PHONY: clean
spotify-proposal.pdf: spotify-proposal.tex
	pdflatex -interaction=nonstopmode -halt-on-error --output-directory=$(OUT) $<
	mv $(OUT)/$@ $@

clean:
	rm -rf $(OUT)
