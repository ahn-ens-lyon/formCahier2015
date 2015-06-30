<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml"
  version="2.0">
  <xsl:output method="html"  encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html lang="fr" xml:lang="fr" xmlns="htpp://www.w3.org/1999/xhtml">
      <head>
        <meta charset="utf-8"/>
        <title><!-- ex1. Donner à la page HTML le titre du document --></title>
        <link href="styles.css" rel="stylesheet"/>
        <script src="scripts.js"/>
      </head>
      <body>
        <header>
          <h1><!-- ex2. Afficher le titre du document --></h1>
        </header>
        <nav>
          <!-- ex6. Afficher un sommaire des trois premiers niveaux de titres -->
        </nav>
        <main>
          <div>
            <!-- ex3. Afficher le texte -->
          </div>
        </main>
      </body>
    </html>
  </xsl:template>
  
  <!-- ex4. Supprimer l'élément <reg> dans les élements <choice>   -->
  <!-- ex5. Transformer les attributs  xml:id en attributs id -->
  
  
  
  
  <!-- Règle de recopie -->
  <xsl:template match="node() | @*">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>


</xsl:stylesheet>
