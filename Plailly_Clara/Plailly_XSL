<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="1.0">
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

    <xsl:template match="tei:div2">
            <p>
                <xsl:apply-templates/>
            </p>
     
    </xsl:template>
    <xsl:template match="tei:p[ancestor::tei:div2[contains(@source,'Paris_1689_4_1')]]">
        <p style="color:red">
            <xsl:apply-templates></xsl:apply-templates>
        </p>
    </xsl:template>
    <xsl:template match="tei:div2[contains(@source,'Paris_1692_7_1')]">
       <I>
           <xsl:apply-templates/>
       </I>
        
    </xsl:template>
    <xsl:template match="tei:titlePart">
        <h1 style="font-size:14pt">
            <xsl:apply-templates/>
        </h1> 
    </xsl:template>
    <xsl:template match="tei:pb[contains(@source,'Paris_1690_5_1')]">
        <xsl:value-of select="@n"/>
    </xsl:template>
    
    <xml:template match="tei:persName">
        blabla
        <xsl:apply-templates/>
         <xsl:variable name="personne">
             <xsl:value-of select="substring(@ref, 2)"/>
         </xsl:variable>
        (<xsl:value-of select="//tei:person[@xml:id=$personne]/tei:roleName"/>)
    </xml:template>
   
    
    

    
</xsl:stylesheet>


