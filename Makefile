generate-pdf: 
	@make latex-clean
	@make latex-pdf
	@make latex-biber
	@make latex-pdf
	@make latex-pdf
	@make latex-clean

latex-clean:
	@echo "############################# Cleaning latex files #############################"
	latexmk -c MWE

latex-pdf:
	@echo "\n############################# pdflatex  #############################" 
	pdflatex MWE

latex-biber:
	@echo "\n############################# biber #############################"
	biber MWE
