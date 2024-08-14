PANDOCFLAGS = resume.md --lua-filter="./columns/columns.lua" --lua-filter="./fonts-and-alignment/fonts-and-alignment.lua"

all: "Isaac Lyons resume.pdf" "Isaac Lyons resume.docx"

"Isaac Lyons resume.pdf" : resume.md
	@echo "Creating PDF"
	@pandoc $(PANDOCFLAGS) --output "./Isaac Lyons resume.pdf"

"Isaac Lyons resume.docx" : resume.md
	@echo "Creating DOCX"
	@pandoc $(PANDOCFLAGS) --output "./Isaac Lyons resume.docx"

clean:
	@echo "Removing final products"
	@rm "Isaac Lyons resume.pdf" "Isaac Lyons resume.docx"
