<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <!--  Pour ouvrir paragraphes dans Div2 : -->
    
    <xsl:template match="tei:TEI"><xsl:apply-templates/></xsl:template>
    
    <xsl:template match="tei:TEI"><html><head/><body><xsl:apply-templates/></body></html></xsl:template>
    
    <!--  Pour ouvrir paragraphes dans Div2 : -->
    
    <!--Apply template : il continue à appliquer au template. A chaque fois qu'il rencontre un div2, il continue à appliquer les instructions. -->
    
    <xsl:template match="tei:div2">
        
        <p><xsl:apply-templates/></p>
        
    </xsl:template>
    
        <!--  Pour afficher tous les éléments en gras : 
        
        Pas de soucis pour l'exécution avec apply-templates.
        -->
    
    <!--
        
        <b><xsl:apply-templates<b>
            
        -->
   
        <xsl:template match="tei:TEI">
            
           ...
           
           
        </xsl:template>
    
    <!--  Pour afficher toutes les remarques présentes qui sont dans l'édition la plus ancienne en rouge. Pour afficher en rouge en html : <p style:"color:red">
        
    -->
  
    <xsl:template match="tei:div2[contains(source, "#edit")]">
        
       <p style="color:red">
           
           <xsl:apply-templates></xsl:apply-templates>
           
       </p>
      
      </xsl:apply-templates>
      
</xsl:stylesheet>


