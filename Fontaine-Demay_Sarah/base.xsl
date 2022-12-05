<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
<xsl:template match="tei:TEI">
    <html>
        <head/>
        <body>
            <p>Nombre de variantes : <xsl:value-of select="count(//tei:app)"/></p>
            <xsl:apply-templates/>
        </body>
    </html>
</xsl:template>



<xsl:template match="tei:docTitle">
    <h1 align="center"> <font size="14pt"> 
        <strong>
            <xsl:apply-templates/>
        </strong>
     </font>
     </h1>   
</xsl:template>
    
    
    
<xsl:template match="tei:teiHeader"/>
    
  
  
<xsl:template match="tei:div2">
    <p>
        <xsl:apply-templates/>
    </p>
</xsl:template>



<xsl:template match="tei:persName | tei:placeName">
    <b>
        <xsl:apply-templates/>
    </b>
</xsl:template>
    
    
    
<xsl:template match="tei:div2[contains(@source,'#Paris_1688_ed1')]"> 
       <p style="color:red">
           <xsl:apply-templates/>
       </p>
</xsl:template>



<xsl:template match="tei:div2[contains(@n, 'D2')]">
    <b>
        <xsl:apply-templates/>
    </b>
</xsl:template>
    
    
    
<xsl:template match="tei:note">
    <span style="color:green">
        <xsl:apply-templates/>
    </span>
</xsl:template>
    
    
    
    
<xsl:template match="tei:pb">
    <span style="color:blue">p.<xsl:value-of select="@n"/></span>
</xsl:template>  
    
    
    
<xsl:template match="tei:persName">
    <xsl:variable name="refID"><xsl:value-of select="substring(@ref,2)"/></xsl:variable>
    (<xsl:value-of select="//tei:person[@xml:id=$refID]/tei:occupation"/>)
        <xsl:apply-templates/>
</xsl:template>   
</xsl:stylesheet>
