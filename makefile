PANDOCFLAGS = resume.md --lua-filter="./columns/columns.lua" --lua-filter="./fonts-and-alignment/fonts-and-alignment.lua"

all: resume.pdf resume.docx

resume.pdf : resume.md
	pandoc $(PANDOCFLAGS) --output "./resume.pdf"

resume.docx : resume.md
	pandoc $(PANDOCFLAGS) --output "./resume.docx"
