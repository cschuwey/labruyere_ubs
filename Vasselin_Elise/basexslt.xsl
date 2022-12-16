<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
  
<xsl:template match="tei:TEI"> 
    
  
    
<html>
<head/>
<body>
    Nombre de variantes : <xsl:value-of select ="count(//tei:app)"/>
    <xsl:apply-templates/>  
    
 
</body>
</html>   
</xsl:template>
<xsl:template match="tei:teiHeader"/>  
 
   
  
<xsl:template match="tei:div2">
    <p>
        <xsl:apply-templates/>        
    </p>
</xsl:template>
  
    
    <xsl:template match="tei:head">
        <p style="text-align: center; font-size:18pt; font-weight: bold"><xsl:apply-templates/></p>
  
    </xsl:template>    
    
   
    <xsl:template match="tei:persName">
        <b>
            <xsl:apply-templates/>
        </b>
        
    </xsl:template>  
    
    
    <xsl:template match="tei:docTitle">
        <b><p style="text-align: center; font-size:14pt; font-weight: bold">
            <xsl:apply-templates/>
      </p></b>
        
    </xsl:template>     
    
    <xsl:template match="tei:docEdition">
        <i>
            <xsl:apply-templates/>
        </i>
        
    </xsl:template>  
    
    <xsl:template match="tei:docImprint">
        <i>
            <xsl:apply-templates/>
       </i>
        
    </xsl:template>  
    <xsl:template match="tei:imprimatur">
        <b>
            <xsl:apply-templates/>
        </b>
        
    </xsl:template>  
    
    <xsl:template match="tei:p[ancestor::tei:div2[contains(@source,Paris_unknown)]]">
        <p style="color:grey">
            <xsl:apply-templates/>
        </p>
    </xsl:template>  
   
   
    <xsl:template match="tei:pb[contains(@source,Paris_unknown)]">
   <i>[
     <xsl:value-of select ="@n"/>
        <xsl:apply-templates/>
    ]</i>
    </xsl:template>
    
<xsl:template match="tei:persName">
    
 (
    <xsl:variable name ="persID"/>
    <xsl:value-of select="substring(@ref,2)"/>
        <xsl:apply-templates/>  
        ) 
    <xsl:value-of select="//tei:person[@xml:id=$persID]/tei:birth"/>
 </xsl:template>
</xsl:stylesheet>


