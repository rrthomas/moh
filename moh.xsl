<?xml version="1.0" encoding="iso-8859-1"?>
<!--
dblatex(1) XSL user stylesheet customization for Mother of Hydrogen
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="processing-instruction('asciidoc-hr')">
    <!-- draw a horizontal rule across the text width -->
    <xsl:text>\bigskip</xsl:text>
    <xsl:text>\centerline{*\quad*\quad*}</xsl:text>
    <xsl:text>\bigskip</xsl:text>
  </xsl:template>

</xsl:stylesheet>
