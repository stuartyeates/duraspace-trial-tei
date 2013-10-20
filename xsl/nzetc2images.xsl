<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tei="http://www.tei-c.org/ns/1.0">
  <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>  
  <xsl:variable name="doc" select="/tei:TEI/@xml:id"/>

  
  <!-- only extract the urls of graphics -->
  <xsl:template match="/" >
      <xsl:apply-templates select="//tei:note//tei:figure"/>
  </xsl:template>



  <!-- XSLT Template to copy anything, priority="-1" -->
  <xsl:template match="tei:figure" >
    <!-- full sized -->
    <xsl:text>http://nzetc.victoria.ac.nz/etexts/</xsl:text>
    <xsl:value-of select="$doc"/>
    <xsl:text>/</xsl:text>
    <xsl:value-of select="@xml:id"/>
    <xsl:text>.jpg</xsl:text>
    <xsl:text>
</xsl:text>

    <!-- marginal tumbnail sized -->
    <xsl:text>http://nzetc.victoria.ac.nz/etexts/</xsl:text>
    <xsl:value-of select="$doc"/>
    <xsl:text>/</xsl:text>
    <xsl:value-of select="@xml:id"/>
    <xsl:text>(w100).jpg</xsl:text>
    <xsl:text>
</xsl:text>

    <!-- search thumbnail sized -->
    <xsl:text>http://nzetc.victoria.ac.nz/etexts/</xsl:text>
    <xsl:value-of select="$doc"/>
    <xsl:text>/</xsl:text>
    <xsl:value-of select="@xml:id"/>
    <xsl:text>(t91).jpg</xsl:text>
    <xsl:text>
</xsl:text>

  </xsl:template>

</xsl:stylesheet>

