<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <!-- Pour afficher les informations sur les persName 
    
    On utilise RefId puis, pour contrer le problème de contexte, substring (@ref, 2)
    
    -->
    
    <xsl:template match="tei:persName">
        
        <xsl:apply-templates/>
        
      <xsl:variable name="refId">
          
          <xsl:value-of select="substring (@ref, 2)"/>
          
      </xsl:variable>
          
      <xsl:value-of select="//tei:person[@xml:id=($refId)]/tei:"/>
    
    </xsl:template>
    
    <!--
        
    1° Compter les app ;
    2° Afficher le nombre d'éléments app avant balise body
    3° Mettre phrase "nombre de app"...
    
    Afficher le nombre de variantes au début du document en body : on veut le résultat d'une fonction.
    
    Xsl-template : pour agir sur des éléments en particulier ; ici, on veut afficher quelque chose.
    
    -->
    
    <xsl:template match="tei:TEI">
        
        <body>
            
            <p>Nombre de variantes  :
                
                   <xsl:value-of select="count(//tei:app)"/>
               
            </p>
        </body>
    
    </xsl:template>
    
    <!-- Pour afficher les numéros de pages 
    
    value-of : pour rechercher des attributs
    
    -->
    
    <xsl:template match="tei:pb">
        
        <xsl:value-of select="@n"/>
        
    </xsl:template>

    <!-- Correction : Template pour affichez le titre entier de l'ouvrage en gras, 14pt, centré -->
    
    <xsl:template match="tei:titlePage">
        
        <h1 style="font-size:14pt ; text-align:center ; bold">
            
            <xsl:apply-templates/>
            
        </h1>
            
    </xsl:template>
    
    <!-- Pour afficher tous les persName en gras -->
    
    <xsl:template match="tei:persName">
        
        <b><xsl:apply-templates/></b>
        
    </xsl:template>
    
    <!-- Pour afficher toutes les remarques div2 en rouge -->
    
    <xsl:template match="tei:div2[contains(@source,'#Tours_1867')]">
        
        <p style="color:red"> <xsl:apply-templates/></p>
        
    </xsl:template>
    
    <!-- Template pour afficher le nom de l'auteur en gras en suivant l'exemple du fichier PDF-->
    
    <xsl:template match="tei:author">
        
        <b><xsl:apply-templates/></b>
        
    </xsl:template>
    
</xsl:stylesheet>
