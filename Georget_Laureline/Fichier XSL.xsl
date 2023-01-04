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
                <p style="color:blue"> Laureline Georget </p>
                <h1 style="color:red; font_size:16pt;text-align:center"> Les Caractères de Théophraste traduit du grec, Jean de La Bruyère </h1>
                <p>Nombre de variantes : <xsl:value-of select="count(//tei:app)"/>  </p>
                <xsl:apply-templates/>  
            </body>
        </html>
        
    </xsl:template>
    <xsl:template match="tei:teiHeader"/>
    
    
    <xsl:template match="tei:p"> 
        
        <p> <xsl:apply-templates/> </p>
        
        
    </xsl:template>
    
    <xsl:template match="tei:persName"> 
        <b>  <xsl:apply-templates/> </b>
        
    </xsl:template>
    
    <xsl:template match="tei:term"> 
        <b>  <xsl:apply-templates/> </b>
        
    </xsl:template>
    
    <xsl:template match="tei:div2[contains(@source,'#Paris_1688_1')]/tei:p">
        <p style="color:red">  <xsl:apply-templates/> </p>
        
    </xsl:template>
    
    <xsl:template match="div2[note]">
        <i style="italic">  <xsl:apply-templates/> </i>
        
    </xsl:template>
    
    <xsl:template match="tei:titlePage">
        <p style="font_size:14pt;text-align:center"> <xsl:apply-templates/></p> <br></br>
        
    </xsl:template> 
    <xsl:template match="tei:pb"> [<xsl:value-of select="@n"/>] </xsl:template>
    
    
    
    <xsl:template match="tei:term">
        <xsl:apply-templates/>
        
        
        
        
        <xsl:variable name="refid">
            <xsl:value-of select="substring(@ref,2)"/> 
            
        </xsl:variable>
        <i style="color:purple"> (<xsl:value-of select="//tei:category[@xml:id=$refid]/tei:catDesc"/>) </i> 
        
    </xsl:template>
 
</xsl:stylesheet>
    
    
    
    
    
    
    
