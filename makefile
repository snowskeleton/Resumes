all: resume.pdf

resume.pdf : resume.md
	pandoc resume.md \
		--lua-filter="./columns/columns.lua" \
		--lua-filter="./fonts-and-alignment/fonts-and-alignment.lua" \
		--output "./resume.pdf"

resume.docx : resume.md
	pandoc resume.md \
		--lua-filter="./columns/columns.lua" \
		--lua-filter="./fonts-and-alignment/fonts-and-alignment.lua" \
		--output "./resume.docx"
