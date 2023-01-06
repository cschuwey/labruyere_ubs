<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <!-- Template pour afficher tous les persName et placeName en gras-->
    
    <xsl:template match="tei:persName | tei:placeName">
        
        <b>
            <xsl:apply-templates/>
        </b>
        
    </xsl:template>

    <!-- Template pour afficher toutes les remarques div2 en rouge -->
    
    <xsl:template match="tei:div2[contains(@source,'#Tours_1867')]">
    
        <p style="color:red"> <xsl:apply-templates/></p>
         
    </xsl:template>
    
    <!-- Template pour afficher le nom de l'auteur en gras en suivant l'exemple du fichier PDF-->
    
    <xsl:template match="tei:author">
       
         <b><xsl:apply-templates/></b>
            
    </xsl:template>
                    
    <!-- Template pour affichez le titre entier de l'ouvrage en gras, 14pt, centré -->
    
    <xsl:template match="tei:docTitle">
        
        <titlePart style="bold, font-size:14pt ; text-align:center">
            
        <xsl:apply-templates/>
       
        </titlePart>
        
    </xsl:template>
   
    <!-- Template pour mettre toutes les remarques en paragraphe-->
    
    <xsl:template match="tei:div2">
        
        <p>
            
            <xsl:apply-templates/>
        </p>
        
    </xsl:template>
   
</xsl:stylesheet>



    
