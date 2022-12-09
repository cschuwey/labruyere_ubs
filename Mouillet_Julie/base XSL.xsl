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
                <!-- Séance 2 avec le XSL -->
                <p style="text-align: center; font-weight: bold">Nombre de variantes : <xsl:value-of select="count(//tei:rdg)"/> par Julie Mouillet
                <xsl:apply-templates/>
                </p>
            </body>
        </html>
    </xsl:template>
    
    <!--Séance 1 avec le XSL-->
    
    <!-- Il manque ce code que j'ai décidé de ne pas faire apparaître <xsl:template match="tei:teiHeader"/> -->
    
    <xsl:template match="tei:div2">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="tei:persName|tei:placeName|tei:objectName">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>
    
    <!-- Il manque ce code, que j'ai décidé de ne pas faire apparaître
                <xsl:template match="tei:div2[contains(@source,'Paris_1688_1')]">
        <p style="color:red">
            <xsl:apply-templates/>
        </p>
    </xsl:template> 
    -->

    <!-- Séance 2 avec le XSL -->

    <xsl:template match="tei:pb">
        <p>[<xsl:value-of select="@n"/>]
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <!-- Il manque ce code que j'ai décidé de ne pas faire apparaître
    <xsl:template match="tei:pb[contains(@source,'Paris_1688_3')]">
        <p>[<xsl:value-of select="@n"/>]
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    -->
    
    <xsl:template match="tei:persName">
        <xsl:apply-templates/>
        <xsl:variable name="persId">
            <xsl:value-of select="substring(@ref,2)"/>
        </xsl:variable>
        (<xsl:value-of select="//tei:person[@xml:id=$persId]/tei:birth"/>-<xsl:value-of select="// tei:person[@xml:id=$persId]/tei:death"/>)
    </xsl:template>
    
    <!-- Mes ajouts personnelles (devoirs, modifications de ce qui a été demandé en cours et en plus) --> 

    <xsl:template match="tei:titlePart">
        <h1 style="text-align: center; font-size:14pt; font-weight: bold">
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <h2><xsl:apply-templates/></h2>
    </xsl:template>

    <xsl:template match="tei:note[contains(@type,'clé')]">
        <p style="font-style: italic; color:green">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:respStmt[contains(@xml:id,'auteur')]">
        <h3 style="text-align : center;"><xsl:apply-templates/></h3>
    </xsl:template>
    
    <xsl:template match="tei:respStmt[contains(@xml:id,'editeur')]">
        <h3 style="text-align : center;"><xsl:apply-templates/></h3>
    </xsl:template>

    <xsl:template match="tei:div2">
        <p><xsl:value-of select="@n"/>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

</xsl:stylesheet>
