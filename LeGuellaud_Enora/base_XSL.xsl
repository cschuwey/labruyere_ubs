<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="tei:TEI">
        <html>
            <head> </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
    </xsl:template>
    
    <xsl:template match="tei:title">
        <b><p style="font-size:14pt"><xsl:apply-templates/></p></b>
    </xsl:template>
    
    <xsl:template match="tei:div2">
        <p > <xsl:apply-templates/> </p>     
    </xsl:template>
    
    
    <xsl:template match="tei:term">
        <b> <xsl:apply-templates/> </b>
    </xsl:template>
    
    <xsl:template match="tei:div2 [contains(@source, '#Paris_1688_4_1')]">
        <p style="color:red"> <xsl:apply-templates/> </p>
    </xsl:template>
    
    <xsl:template match="tei:note">
      <i><p style="color:green"><xsl:apply-templates/></p></i>
    </xsl:template>
    
</xsl:stylesheet>



