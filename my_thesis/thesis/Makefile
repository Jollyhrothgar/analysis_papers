all:
	touch build_log
	pdflatex thesis.tex >> build_log
	bibtex thesis.aux >> build_log
	pdflatex thesis.tex >> build_log
	pdflatex thesis.tex >> build_log
clean:
	rm -rfv thesis.pdf
	rm -rfv thesis.toc
	rm -rfv thesis.pdfsync
	rm -rfv thesis.lot
	rm -rfv thesis.log
	rm -rfv thesis.lof
	rm -rfv thesis.fls
	rm -rfv thesis.dvi
	rm -rfv thesis.aux
	rm -rfv thesis.fdb_latexmk
	rm -rfv thesis.bbl
	rm -rfv thesis.blg
	rm -rfv build_log
