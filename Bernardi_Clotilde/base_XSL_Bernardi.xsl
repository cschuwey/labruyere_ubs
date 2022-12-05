<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs" version="1.0">

    <xsl:template match="tei:TEI">
        <html>
            <head/>
            <!-- Compter le nombre de variantes-->
            <body> Nombre de variantes encodées : <xsl:value-of select="count (//tei:app)"/>
                <p/>
                <xsl:apply-templates/>
            </body>

        </html>
    </xsl:template>
    <!-- Ici le titre du document en gras, 14pt et centré-->
    <xsl:template match="tei:docTitle">
        <h1 style="font-size: 14 pt ; text-align: center ; bold">
            <xsl:apply-templates/>
        </h1>

    </xsl:template>

    <xsl:template match="tei:teiHeader"/>
   
    <!-- Mettre toutes les remarques en paragraphe-->
    <xsl:template match="tei:div2">

        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <!-- Mettre tous les persName et placeName en gras-->
    <xsl:template match="tei:persName | tei:placeName">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>
    <!--Mettre les remarques de la première édition en rouge-->

    <xsl:template match="tei:div2 [contains (@source, '#Paris_1688_Premiere')]">
        <p style="color:red">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <!-- Ici les dates de mort des personnes dans le texte-->
    
    <xsl:template match="tei:persName">
        <xsl:variable name="refID"> <xsl:value-of select="substring(@ref,2)"/></xsl:variable>
        (<xsl:value-of select="//tei:person[@xml:id=$refID]/tei:death"/>) <xsl:apply-templates/>
    </xsl:template>
    <!-- Ici les notes en bleu-->
    <xsl:template match="tei:note">
        <span style="color:blue">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <!-- J'ai voulu mettre tous les pieds de mouche en gras-->
    <xsl:template match="tei:p/tei:g [contains (@ref, '#pieddemouche and #p-pieddemouche')]">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>

    <!-- Mettre les numéros de page-->

    <xsl:template match="tei:pb"> [p. <xsl:value-of select="@n"/>] </xsl:template>
</xsl:stylesheet>
