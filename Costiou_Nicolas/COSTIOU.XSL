<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <!-- Template pour afficher le nom de l'auteur en gras en suivant l'exemple du fichier PDF-->
    
    <xsl:template match="tei:author">
       
         <b><xsl:apply-templates/></b>
            
    </xsl:template>
                    
    <!-- Template pour affichez le titre entier de l'ouvrage en gras, 14pt, centré -->
    
    <xsl:template match="tei:TEI">
        
        <b><title style="font-size:14pt ; text-align:center"><xsl:apply-templates/></title></b>
        
    </xsl:template>
    
</xsl:stylesheet>
 


    
   
    
