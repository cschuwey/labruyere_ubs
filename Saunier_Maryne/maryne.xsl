<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="tei:TEI">
        
        <html>
            <head/>
            <body>
                <xsl:apply-templates></xsl:apply-templates>
            </body>
        </html>
        
        
    </xsl:template>
    
    <xsl:template match="tei:teiHeader"></xsl:template>
    
    <xsl:template match="tei:titlePart">
        <center><p style="front-size:14pt">
            <xsl:apply-templates></xsl:apply-templates></p></center>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <center><p><em><xsl:apply-templates></xsl:apply-templates></em></p></center>
    </xsl:template>
    
    <xsl:template match="tei:persName|tei:placeName|tei:term">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>
    
    <xsl:template match="tei:note">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>
    
    <xsl:template match="tei:p[ancestor::tei:div2[contains(@source,'Paris_1690_5')]]">
        <p style="color:red">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
</xsl:stylesheet>
