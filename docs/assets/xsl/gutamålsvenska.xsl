<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs tei" 
    version="1.0">
    <xsl:output method="xml" omit-xml-declaration="yes"
        doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
    />
    <!-- Tailored on the background of letter-to-LG.xml spoiler
        Please note that some solutions can be differently made, simplified etc
        These are for illustration only, but feel free to use if and retailor it
        for your own project.
    -->
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                    crossorigin="anonymous"/>
                <title> gutamålsvenska 
                </title>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <style type="text/css">
                    body { margin : 10% }
                    .head { font-weight : bold ;
                    margin-bottom : 1em ;
                    font-size : 20px
                    } 
                </style>
            </head>
            
            <main>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <article id="gutamål">
                                <xsl:apply-templates select="//tei:text [@n=2]"/>
                            </article>
                        </div>
                        <div class="col-sm-6">
                            <article id="svenska">
                                <xsl:apply-templates select="//tei:text [@n=3]"/>
                            </article>
                        </div>    
                    </div>
                </div>
             </main>
        </html>
    </xsl:template>
    
    <xsl:template match="tei:p">
        <xsl:apply-templates/><p/>    
    </xsl:template>
   
  
    
    
    <xsl:template match="tei:lb">
        <xsl:apply-templates/><br/>   
    </xsl:template>
    
    <xsl:template match="tei:form">
        <xsl:apply-templates/><p/>   
    </xsl:template>
    
    <xsl:template match="tei:sense">
        <xsl:apply-templates/><p/>   
    </xsl:template>
    
    <xsl:template match="tei:head">
         <p class="head"><xsl:apply-templates/></p>
    </xsl:template>
    
 
</xsl:stylesheet>