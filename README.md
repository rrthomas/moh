# Mother of Hydrogen

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>  
© 2012–2018 Vinay Gupta.

For the full text of the license, see the file [LICENSE](LICENSE).

This is Vinay Gupta’s novel of the near future.


# Building

You will need `asciidoc`.

## PDF

To make a PDF, you will need `dblatex` and a LaTeX system such as TeXLive, and if you’re using asciidoc 8.6.9 or earlier, copy the file `asciidoc-dblatex.xsl` over its copy, typically in `/etc/asciidoc/dblatex`.

To build a PDF, use the following command:

```
a2x mother_of_hydrogen.txt
```

## EBUB

To make an EPUB, you will also `xsltproc` and `epubcheck`.

To build an EPUB, use the following command:

```
a2x -f epub mother_of_hydrogen.txt
```
