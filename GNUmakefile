# Make a PDF release

PROJECT=moh

TAG := $(shell git describe --tags)
VERSION := $(shell echo $(TAG) | sed -e 's/^v//')
BOOKFILE = mother_of_hydrogen.txt
SOURCES = $(BOOKFILE) moh.sty docinfo.xml
TYPES = pdf epub

pdf: $(SOURCES)
	a2x $(BOOKFILE)

epub: $(SOURCES)
	a2x --format=epub $(BOOKFILE)


# To make a release: git tag vx.y && git push --tags && make release
# Needs woger from https://github.com/rrthomas/woger/
release: $(TYPES)
	git diff --exit-code && \
	woger github github_user=rrthomas package=$(PROJECT) version=$(VERSION) dist_type=zip github_dist_type=pdf
	for i in $(TYPES); do \
	    github-release upload --user rrthomas --repo $(PROJECT) --tag $(TAG) --name $(PROJECT)-$(VERSION).pdf --file mother_of_hydrogen.$$i --security-token `netrc -p github-release.github.com`; \
	done
