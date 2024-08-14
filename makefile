resume.pdf : resume.md
	pandoc resume.md \
		--lua-filter="./columns/columns.lua" \
		--lua-filter="./fonts-and-alignment/fonts-and-alignment.lua" \
		--output "./resume.pdf"
