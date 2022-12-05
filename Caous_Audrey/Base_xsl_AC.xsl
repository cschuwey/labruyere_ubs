<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="tei:TEI">
        <html>
            <head/>
            <body>
                <p style="color:#26C4EC; font-size:20pt; text-align:center">Réalisé par Audrey CAOUS</p>
                <p style="color:black; font-size:18pt; text-align:center">M1 Métiers du Livre et de l'Édition</p>
                <p style="color:green; font-size:13pt; text-align:center">Total de variantes encodées :
                    <xsl:value-of select="count(//tei:app)"/>
                </p>
                <xsl:apply-templates/>
            </body>
        </html>

    </xsl:template>
    
    <xsl:template match="tei:teiHeader"/>
    
    <xsl:template match="tei:div2/tei:p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="tei:persName|tei:placeName|tei:term">
        <b><xsl:apply-templates/></b>
    </xsl:template>
    
    <xsl:template match="tei:div2[contains(@source,'#Paris_1694_8')]">
        <p style="color:red"><xsl:apply-templates/></p>
        
    </xsl:template>
    
    <xsl:template match="tei:titlePage">
        <h1 style="font-size:14pt; text-align: center"> 
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    
    <xsl:template match="tei:div2/ tei:g">
        <b><xsl:apply-templates/></b>
        <p style="color:green"><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="tei:pb">
        <p style="fontsize:10pt"><xsl:value-of select="@n"/></p>
    </xsl:template>
    
    <xsl:template match="tei:persName">
        <xsl:apply-templates/>
        <xsl:variable name="refId">
            <xsl:value-of select="substring(@ref,2)"/>
        </xsl:variable>
        <p>(<xsl:value-of select="//tei:person[@xml:id=$refId]/tei:figure/tei:graphic/@url"/>)</p>
    </xsl:template>
    
        
    
    

    
</xsl:stylesheet>


