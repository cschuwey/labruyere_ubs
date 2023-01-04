<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="tei:TEI">
        <html>
            <head>
                
            </head>
            <body>
                <p>Nombre de variable:<xsl:value-of select="count(//tei.app)"/></p>
                <xsl:apply-templates>
                    
                </xsl:apply-templates>
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
    </xsl:template>
    
    <xsl:template match="tei:div2">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="tei:placeName">
        <placeName><b><xsl:apply-templates/></b></placeName>
    </xsl:template>
    
    <xsl:template match="tei:div2[contains(@source,'#Paris_1688_Première_édition')]">
        <p style="color:red">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:front">
        <h1 style="font-style:bold font-size:14pt text-align:center">
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    
    <xsl:template match="tei:pb">
        - <xsl:value-of select="@n"/> -
    </xsl:template>
   
    <xsl:template match="tei:persName">
        <xsl:variable name="refid">
            <xsl:value-of select="substring(@ref,2)"/>
        </xsl:variable>
        <xsl:value-of select="//tei:person[@xml:id=$refid]/tei:birth"/>
    </xsl:template>
    
</xsl:stylesheet>
