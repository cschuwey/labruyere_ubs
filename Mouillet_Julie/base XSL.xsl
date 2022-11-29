<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="tei:TEI">
        <html>
            <head></head>
            <body><xsl:apply-templates/></body>
        </html>
    </xsl:template>

    <xsl:template match="tei:title[contains(@type, full)]">
        <p style="text-align: center; font-size:14pt; font-weight: bold">
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="tei:note[contains(@type,'clé')]">
        <p style="font-style: italic; color:blue">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:persName|tei:placeName|tei:objectName">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>
     
    
</xsl:stylesheet>
