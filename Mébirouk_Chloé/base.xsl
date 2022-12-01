<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">

<xsl:template match="tei:TEI"> 
<html>
    <head/>
    <body>
    <xsl:apply-templates/>
    </body>
</html>

</xsl:template>

<xsl:template match="tei:teiHeader">
</xsl:template>

 <xsl:template match="tei:titlePart"> 
        <p style="text-align:center; font-weight:bold; font-size:14px"> <xsl:apply-templates/> </p> 
 </xsl:template>
 
<xsl:template match="tei:docAuthor"> 
    <p style="text-align:justify; margin-left:1cm"> <xsl:apply-templates/> </p> 
</xsl:template>

 <xsl:template match="tei:docEdition"> 
     <p style="text-align:justify; margin-left:1cm"> <xsl:apply-templates/> </p> 
 </xsl:template>

 <xsl:template match="tei:docImprint">
     <p style="text-align:justify; margin-left:1cm"> <xsl:apply-templates/> </p> 
</xsl:template>
    
<xsl:template match="tei:docDate"> 
    <p style="text-align:justify; margin-left:1cm"> <xsl:apply-templates/> </p> 
</xsl:template>
    
<xsl:template match="tei:imprimatur"> 
    <p style="text-align:justify; margin-left:1cm"> <xsl:apply-templates/> </p> 
</xsl:template>

<xsl:template match="tei:head"> 
    <p style="text-align:center; font-weight:bold; font-size:14px; color:pink"> <xsl:apply-templates/> </p> 
</xsl:template>

<xsl:template match="tei:div2"> 
    <p style="text-align:justify; margin-right:1cm; margin-left:1cm"> <xsl:apply-templates/> </p> 
</xsl:template>

<xsl:template match="tei:persName | tei:term">
        <b > <xsl:apply-templates/> </b>
</xsl:template>

    <xsl:template match="tei:div2[contains(@source,'Paris_1690_5_1')]">
        <p style="color:#FF5F1F; text-align:justify; margin-right:1cm; margin-left:1cm"> <xsl:apply-templates/> </p>
</xsl:template>
    
 <xsl:template match="tei:note[@type='glossaire']"> 
     <i style="color:#02A3E6"> <xsl:apply-templates/>  </i> 
</xsl:template>
    
    <xsl:template match="tei:note[@type='interprétation']"> 
        <i style="color:#FF10F0"> <xsl:apply-templates/>  </i> 
 </xsl:template>

</xsl:stylesheet>


