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
    
    <xsl:template match="tei:teiHeader"/>
    
    <xsl:template match="tei:div2/tei:p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
        <xsl:template match="tei:div2/g">
        <b><xsl:apply-templates/></b>
        <p style="green"><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="tei:titlePage">
        <b><xsl:apply-templates/></b>
        <fo:block text-align="center" font-size="14pt"><xsl:apply-templates/></fo:block>
        <p style="green"><xsl:apply-templates/></p>
    </xsl:template>
    
    
    
    <xsl:template match="tei:persName|tei:placeName|tei:term">
        <b><xsl:apply-templates/></b>
    </xsl:template>
    
    <xsl:template match="tei:div2[contains(@source,'#Paris_1694_8')]">
        <p style="color:red"><xsl:apply-templates/></p>
        
    </xsl:template>
        
    
    

    
</xsl:stylesheet>


