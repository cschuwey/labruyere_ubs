<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
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
                    
    <!-- Template pour affichez le titre entier de l'ouvrage en gras, 14pt, centré -->
    
    <xsl:template match="tei:teiHeader[child:fileDesc/child:titleStmt/child:titleStmt">
        
        <title style="bold, font-size:14pt ; text-align:center"><xsl:apply-templates/></title>
        
    </xsl:template>
    
</xsl:stylesheet>


    
 


    
   
    
