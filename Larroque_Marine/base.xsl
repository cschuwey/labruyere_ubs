<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:template match="tei:TEI">
        <html>
            <head></head>
            <body>
                <xsl:apply-templates></xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader"></xsl:template>
    
    <!--Codage pour le titre head-->
    <xsl:template match="tei:head">
        <p style="text-align: center; font-size:14pt; font-weight: bold">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <!--En-dessous les deux template concernant la titlePage-->
    <xsl:template match="tei:titlePage">
        <i style="font-size:11pt">
            <xsl:apply-templates></xsl:apply-templates>
        </i>
    </xsl:template>
    <xsl:template match="tei:figure"></xsl:template>
    
    <!--Ici, j'ai essayé d'ajouter des notes de bas de pages mais elles n'apparaissent pas dans le document de sortie-->
    <xsl:template match="tei:note">
    <xsl:for-each select="note">
        <xsl:text>[</xsl:text>
        <xsl:value-of select="count(preceding-sibling::note)+1"/>
        <xsl:text>]</xsl:text>
        <xsl:apply-templates/>
    </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="tei:div2">
        <p>
            <xsl:apply-templates></xsl:apply-templates>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:persName|tei:placeName">
        <b>
            <xsl:apply-templates></xsl:apply-templates>
        </b>
    </xsl:template>
    
    <xsl:template match="tei:hi">
        <i>
            <xsl:apply-templates></xsl:apply-templates>
        </i>
    </xsl:template>
    
    <!--Ici, il s'agit du codage pour que mes RDG n'apparaissent pas en sortie-->
    <xsl:template match="tei:rdg"></xsl:template>
    
    <xsl:template match="tei:div2[contains(@source,'#PARIS_1688_1')]">
        <p style="color:red">
            <xsl:apply-templates></xsl:apply-templates>
        </p>
    </xsl:template>
    
</xsl:stylesheet>
