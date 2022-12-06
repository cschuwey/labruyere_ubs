<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="tei:TEI">
        <html>
            <head>
                <body>
                    <p style="color:red; text-align:center; font-weight:bold">Clairvie MARQUET</p>
                    <p style="text-align:center; font-size:20pt">Les caractères de la Bruyère</p>
                    <p style="color:red; text-align:center; font-size:12pt">
                    Nombre de variantes : <xsl:value-of select="count(//tei:app)"/>
                    </p>
                    <xsl:apply-templates/>
                </body>
            </head>
        </html>  
    </xsl:template>
    <xsl:template match="tei:teiHeader">
        
    </xsl:template>
    <xsl:template match="tei:div2">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="tei:placeName">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>
    <xsl:template match="tei:div2[contains(@source,'#Paris_1690_5')]/tei:p">
        <p style="color:red"><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="tei:p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="tei:head">
        <h1 style="font-size:14pt; text-align:center; font-weight:bold">
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    <xsl:template match="tei:docTitle">
   
    </xsl:template>
    <xsl:template match="tei:titlePage">
        <p style="font-size:14pt; font-style:italic">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="tei:pb">
        [<xsl:value-of select="@n"/>]
    </xsl:template>
    <xsl:template match="tei:persName">
        <b>
            <xsl:apply-templates/>
        </b>
        <xsl:variable name="persId">
            <xsl:value-of select="substring(@ref,2)"/>  
        </xsl:variable>
        <b style="color:blue">(<xsl:value-of select="//tei:person[@xml:id=$persId]/tei:birth"/>-<xsl:value-of select="// tei:person[@xml:id=$persId]/tei:death"/>)</b>
    </xsl:template>
</xsl:stylesheet>


