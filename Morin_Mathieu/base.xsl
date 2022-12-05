<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:param name="ed">
        Paris_1688_3
        Paris_1689_4
        Paris_1692_7
        Paris_1699_10
    </xsl:param>
    
    <xsl:template match="tei:TEI">        
        
        <html>
            <head/>
            <body>
                <xsl:apply-templates>
                </xsl:apply-templates>
            </body>
        </html>
        
        <p>Nombre de variante : <xsl:value-of select="count(//tei:app)"/></p>
                 
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
    </xsl:template>
    
    <xsl:template match="tei:div2">
        <p>
            <xsl:apply-templates>
            </xsl:apply-templates>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:persName|tei:placeName">
        <b>
            <xsl:apply-templates/>            
        </b>
    </xsl:template>
    
    <xsl:template match="tei:p[contains(@source,'Paris_1688_3')]">
        <p style="color:red">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:rdg"/>
    
    <xsl:template match="tei:docTitle">
        <h1 style="font-size:14pt" align="center">
            <b>
                <xsl:apply-templates/>
            </b>
        </h1>
    </xsl:template>
    
    <xsl:template match="tei:pb[contains(@source,'Paris_1692_7')]">
        <xsl:value-of select="@n"/>
    </xsl:template>
    
    <xsl:template match="tei:persName">
        <xsl:apply-templates/>
        <xsl:variable name="Corneille">            
            <xsl:value-of select="substring(@ref,2)"/>
        </xsl:variable>
        <xsl:value-of select="//tei:person[@xml:id=$Corneille]/tei:birth"/>
        
    </xsl:template>
            
</xsl:stylesheet>


