main = a-pythontex-example.tex

pdf: $(main) clean
	# most of the time, it is necessary to clean the directory, hence the clean dep
	latexmk -pdf -g $<
	# for unknown reason, latexmk must be run twice to properly generate pdf file
	latexmk -pdf -g $<

clean: 
	latexmk -c
	rm -rf pythontex-files-*