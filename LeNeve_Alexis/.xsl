<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
  <xsl:param name="ed">
      Paris_1688_1
      Paris_1694_4
      Paris_1691_6
      Paris_1699_10
  </xsl:param>  
    
    <xsl:template match="tei:TEI">
        <html>
            <head/>
            <body>
                Nombre de variantes <xsl:value-of select="count(tei:app)"/>
                <xsl:apply-templates></xsl:apply-templates>
            </body>
        </html>
        <xsl:apply-templates></xsl:apply-templates>
        
    </xsl:template>
    
    
    
    <xsl:template match="tei:div2">
        <p>
            <b></b>
            <xsl:apply-templates>
            </xsl:apply-templates>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:persName">
        <html>
            <head/>
            <body style="&quot;font-size:14pt&quot;">
                <xsl:apply-templates></xsl:apply-templates>
                    <title>Les Caractères de la Bruyère</title><xsl:apply-templates/>
            </body>
                <p><b/></p>
            <center/>
        </html>
    </xsl:template>
    
    <xsl:template match="tei:persName">
        <xsl:apply-templates/>
            <xsl:variable name="persId">
                <xsl:value-of select="@ref"/> <persName ref="#LaBruyère"/>
            </xsl:variable>
        <xsl:value-of select="//teiperson[@xml:id=$persId]/tei:birth"/>
    </xsl:template>
    
    <xsl:template match="tei:pb[contains(@source,'ed6')]">
        <xsl:value-of select="@n"/>
    </xsl:template>
</xsl:stylesheet>
