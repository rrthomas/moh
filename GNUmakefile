# Make a PDF release

PROJECT=moh

TAG := $(shell git describe --tags)
VERSION := $(shell echo $(TAG) | sed -e 's/^v//')
BOOKFILE = mother_of_hydrogen.txt
SOURCES = $(BOOKFILE) moh.sty docinfo.xml
TYPES = pdf epub

pdf: $(SOURCES)
	asciidoctor-pdf --trace --theme asciidoctor-theme.yml -a pdf-fontsdir="." $(BOOKFILE)

# FIXME
epub: $(SOURCES)
	a2x --attribute=docinfo2 --format=epub $(BOOKFILE)

# FIXME
print: $(SOURCES)
	a2x $(BOOKFILE)
	latexmk -xelatex dust-jacket.tex cover.tex

# To make a release: git tag vx.y && make release
release: $(TYPES)
	FILES="" && \
	for i in $(TYPES); do \
	    FILES="$$FILES mother_of_hydrogen.$$i"; \
	done && \
	gh release create v$(VERSION) --title "Release v$(VERSION)" $$FILES
