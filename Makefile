generate-pdf:
	@echo "############################# Cleaning latex files #############################"
	latexmk -c MWE
	@echo "\n############################# pdflatex  #############################" 
	pdflatex MWE
	@echo "\n############################# biber #############################"
	biber MWE
	@echo "\n############################# pdflatex #############################"
	pdflatex MWE
	@echo "\n############################# pdflatex #############################"
	pdflatex MWE
	@echo "\n############################# Cleaning latex files #############################"
	latexmk -c MWE
