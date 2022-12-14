<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:param name="ed">
        PARIS_1689_4
    </xsl:param>
    <xsl:template match="tei:TEI">
        <html>
            <head>
                <body>
                    Nombre de variantes : <xsl:value-of select="count (//tei:app)"/>
                    <xsl:apply-templates/>
                </body>
            </head>
        </html>
    </xsl:template>
    <xsl:template match="tei:teiHeader"></xsl:template>
    
    <xsl:template match="tei:titlePart">
        <b><p style="color:#E179F0; text-align:center; font-size:14pt">
            <xsl:apply-templates/>
        </p></b>
    </xsl:template>
    
    <xsl:template match="tei:div2">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:div2[contains (@source,'PARIS_1689_4')]" >
        <p style="color:grey">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
   
    <xsl:template match="tei:persName">
        <b style="color:purple"><xsl:apply-templates/></b>
    </xsl:template>
    
    <xsl:template match="tei:term">
        <b style="color:purple"><xsl:apply-templates/></b>
    </xsl:template>
    
    <xsl:template match="tei:placeName">
        <b style="color:purple"><xsl:apply-templates/></b>
    </xsl:template>
    
    <xsl:template match="tei:note">
        <i style="color:blue">
            <xsl:apply-templates/>
        </i>
    </xsl:template>
    
    <xsl:template match="tei:pb">
        <xsl:value-of select="@n"/>
    </xsl:template>
    
    <xsl:template match="tei:pb[contains (@source,'PARIS_1689_4')]">
        <xsl:value-of select="@n"/>
    </xsl:template>
    
    <xsl:template match="tei:persName">
        <xsl:apply-templates/>
            <xsl:variable name="date">
                <xsl:value-of select="substring(@ref,2)"/> 
            </xsl:variable>
        (<xsl:value-of select="//tei:person[@xml:id=$date]/tei:birth"/>, <xsl:value-of select="//tei:person[@xml:id=$date]/tei:death"/>)
    </xsl:template>       
</xsl:stylesheet>
