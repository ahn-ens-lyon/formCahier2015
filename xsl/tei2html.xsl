<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml"
  version="2.0">
  <xsl:output method="html"  encoding="UTF-8" indent="yes" />
  
  <xsl:strip-space elements="*"/>

  <xsl:template match="/">
    <html lang="fr" xml:lang="fr" xmlns="htpp://www.w3.org/1999/xhtml">
      <head>
        <meta charset="utf-8"/>
        <title>
          <!-- ex1. Donner à la page HTML le titre du document -->
          <xsl:apply-templates select="/TEI/teiHeader/fileDesc/titleStmt/title[@type='main']"/>
        </title>
        <link href="styles.css" rel="stylesheet"/>
        <script src="scripts.js"/>
      </head>
      <body>
        <header>
          
            <!-- ex2. Afficher le titre du document -->
          <h1><xsl:apply-templates select="/TEI/teiHeader/fileDesc/titleStmt/title[@type='main']"/></h1>
          <h2><xsl:apply-templates select="/TEI/teiHeader/fileDesc/titleStmt/title[@type='sub']"/></h2>
          
        </header>
        <nav>
          <!-- ex6. Afficher un sommaire des trois premiers niveaux de titres -->
          <xsl:apply-templates select="/TEI/text/body/div"  mode="toc"/>
        </nav>
        <main>
          <section>
            <!-- ex3. Afficher le texte -->
            <xsl:apply-templates select="/TEI/text/body/div" />
          </section>
        </main>
      </body>
    </html>
  </xsl:template>
  
  <!-- ex3. Afficher le texte -->
  <xsl:template match="div">
    <div>
      <xsl:apply-templates select="node() | @xml:id"/>
    </div>
  </xsl:template>
  
  <xsl:template match="head">
    <xsl:variable name="niv">h<xsl:value-of select="count(ancestor::div)"/></xsl:variable>
    <xsl:element name="{$niv}">
      <xsl:value-of select="."/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="p">
    <p>
      <xsl:apply-templates />
    </p>
  </xsl:template>
  
  <!-- ex4. Supprimer l'élément <reg> dans les élements <choice>   -->
  <xsl:template match="choice">
    <xsl:apply-templates select="*[not(local-name() = 'reg')]"/>
  </xsl:template>
  
  <!-- ex5. Transformer les attributs  xml:id en attributs id -->
  <xsl:template match="@xml:id">
    <xsl:attribute name="id" select="."/>
  </xsl:template>
  
  
  <!-- ex6. Afficher un sommaire des trois premiers niveaux de titres -->
  <xsl:template match="div" mode="toc">
    <ul>
      <xsl:choose>
        <xsl:when test="head">
          <xsl:for-each select="head">
            <li><xsl:apply-templates select="." mode="toc"/></li>
          </xsl:for-each>        
        </xsl:when>
        <xsl:otherwise>
          <xsl:number select="parent::*" level="single"/>.<xsl:value-of select="position()"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="div" mode="toc" />
    </ul>
  </xsl:template>
  
  <!-- ex6. Afficher un sommaire des trois premiers niveaux de titres -->
  <xsl:template match="head" mode="toc">
    <xsl:value-of select="."/>
  </xsl:template>
  
  <xsl:template match="persName">
    <span class="{local-name()}">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  
  
  <!-- Règle de recopie -->
  <!--<xsl:template match="node() | @*">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>-->


</xsl:stylesheet>
