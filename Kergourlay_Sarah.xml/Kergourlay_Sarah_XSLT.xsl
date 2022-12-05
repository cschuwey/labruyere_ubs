<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs" version="1.0">
    <xsl:template match="tei:TEI">
        <html>
            <head/>
            <body>
                <p>Nombre de variantes : <xsl:value-of select="count(//tei:app)"/></p>
                <xsl:apply-templates/>
            </body>
        </html>

    </xsl:template>
    <xsl:template match="tei:teiHeader"/>
    <xsl:template match="tei:div2/tei:p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="tei:persName">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>
    <xsl:template match="tei:div2[contains(@source,'#Paris_1688_1')]">
        <p style="color:red">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="tei:p//tei:title">
        <i>
            <xsl:apply-templates/>
        </i>
    </xsl:template>
    <xsl:template match="tei:docTitle">
        <h1 style="font-size:14pt;text-align:center">
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    <xsl:template match="tei:pb">
        <p>
            <xsl:value-of select="@n"/>
        </p>
    </xsl:template>
    <xsl:template match="tei:persName">
        <xsl:apply-templates/>
        <xsl:variable name="refID">
            <xsl:value-of select="substring(@ref,2)"/>
        </xsl:variable>
        <p>(<xsl:value-of select="//tei:person[@xml:id=$refID]/tei:birth"/>, <xsl:value-of
                select="//tei:person[@xml:id=$refID]/tei:death"/>, <xsl:value-of
                select="//tei:person[@xml:id=$refID]/tei:occupation"/>)</p>
    </xsl:template>

</xsl:stylesheet>
