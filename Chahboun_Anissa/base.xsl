<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:template match="tei:TEI">
        <html>
            <head/>
            <body>
                <xsl:apply-templates/>    
            </body>
        </html>
        
    </xsl:template>
    <xsl:template match="tei:teiHeader">
    </xsl:template>
    <xsl:template match="tei:text">
        <xsl:apply-templates/>         
    </xsl:template>
       <xsl:template match="tei:titlePage[contains(@source,'Paris_1688')]">
        <font size="14">
           <b><xsl:apply-templates/></b>
        </font>        
    </xsl:template>
    <xsl:template match="tei:div2/tei:p">
        <p><xsl:apply-templates/></p>
        <xsl:apply-templates/> 
    </xsl:template>
    
    <xsl:template match="tei:persName|tei:term">
        <b><xsl:apply-templates/></b>        
    </xsl:template>
    
    <xsl:template match="tei:p[contains(@source,'Paris_1688')]">
        <b style="color:red"><xsl:apply-templates/></b>
    </xsl:template>
    
    <xsl:template match="tei:placeName">
        <b style="color:purple"><xsl:apply-templates/></b>        
    </xsl:template>
    
    <xsl:template match="tei:pb[contains (@source,'Paris_1688')]">
        <xsl:apply-templates/>     
    </xsl:template>
    
 
    
</xsl:stylesheet>

