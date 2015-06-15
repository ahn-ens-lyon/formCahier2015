<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema" 
                exclude-result-prefixes="xs"
                xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
                xmlns="http://www.w3.org/1999/xhtml" 
                version="2.0">
    <xsl:output method="xml" omit-xml-declaration="no" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>
          <xsl:apply-templates select="titleStmt/title"/>
        </title>
        <meta content="" />
        <xsl:apply-templates/>
      </head>
    </html>
  </xsl:template>
  
  <xsl:template match="node() | @*">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>
  
  
</xsl:stylesheet>