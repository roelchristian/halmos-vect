filename=book

build:
	@echo "Building in silent mode..."
	lualatex -interaction=batchmode $(filename).tex > /dev/null
	@echo "Output file created: $(filename).pdf"

clean:
	@echo "Cleaning..."
	rm -f *.aux *.log *.out *.toc *.pdf
