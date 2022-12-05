<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    

<xsl:template match="tei:TEI">

     <xsl:variable name= "#term">
         
     </xsl:variable>
    <xsl:value-of select="substring (@term,2)"/>
<html>
            
    <head/>
    <body>
        
        Nombre de variantes: <xsl:value-of select="count(//tei:app)"/>
    
        
        <xsl:apply-templates>
           
        </xsl:apply-templates>
    </body>
</html>    


</xsl:template>    
    
<xsl:template match="tei:TeiHeader"/>
    <xsl:template match="tei:div2">
        <p>
            <xsl:apply-templates/>
        </p>
              
    </xsl:template>
    
<xsl:template match = "tei:front">
    <p>
        <xsl:apply-templates/>
    </p>
</xsl:template>
    
    <xsl:template match= "tei:head">
        <p style="text-align: center; font-size:14pt; font-weight: bold; font-style: calibri">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:term">
        <p style="color:red; font-weight: italic">
            <xsl:apply-templates/>
                                    
        </p>
   
    </xsl:template>
    <xsl:template match="tei:p[ancestor::tei:div2[contains(@source,'ed1')]]">
        <p style="color:red">
            <xsl:apply-templates/>
            </p>
        </xsl:template>
    
    <xsl:template match="tei:pb [contains(@source,'ed8')]"/>
        
       
            
        
        
   

    
</xsl:stylesheet>

