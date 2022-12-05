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
        <center><h1 style="front-size:14pt">
            <xsl:apply-templates></xsl:apply-templates></h1></center>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <center><p><em><xsl:apply-templates></xsl:apply-templates></em></p></center>
    </xsl:template>
    
    <xsl:template match="tei:persName">
        <b>
            <xsl:apply-templates/> (<xsl:variable name="persID"><xsl:value-of select="substring(@ref,2)"/></xsl:variable><xsl:value-of select="//tei:person[@xml:id=$persID]/tei:birth"/>)
        </b>
    </xsl:template>
    
    <xsl:template match="tei:note">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>
    
    <xsl:template match="tei:p[ancestor::tei:div2[contains(@source,'Paris_1690_5')]]">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:pb[ancestor::tei:div2[contains(@source,'Paris_1690_5')]]">
        <xsl:value-of select="@n"/>
    </xsl:template>
    
    <xsl:template match="tei:docEdition[contains(@source,'Paris_1690_5')]">
        <p style="color:red">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:docEdition[contains(@source,'Paris_1692_7')]">
    </xsl:template>
    
    <xsl:template match="tei:pb[contains(@source,'Paris_1692_7')]"/>
    
    
    <xsl:template match="tei:placeName|tei:term">
        <b>
            <xsl:apply-templates></xsl:apply-templates>
        </b>
    </xsl:template>
    
</xsl:stylesheet>
