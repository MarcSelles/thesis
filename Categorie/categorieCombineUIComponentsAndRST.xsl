<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:func="http://exslt.org/functions"
    exclude-result-prefixes="xs func"
    version="2.0">
    <xsl:import href="categorieUIComponents.xsl"/>
    <xsl:import href="../rstAndComponentsToUI.xsl"/>
    
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <!-- Import the RST-file -->
    <xsl:param name="RST" select="document('file:///Users/marcselles/Master/Thesis/Transformation/Categorie/RSTPrikbord.xml')"/>
    
    <!-- Start the process of generating the UI -->
    <xsl:template match="/">
        <!-- Template genericStructure will generate the skeleton of the HTML -->
        <xsl:call-template name="genericStructure">
            <xsl:with-param name="title">Categorie</xsl:with-param>
            <xsl:with-param name="content">
                <!-- All UI components will be structured using this function -->
                <xsl:copy-of select="func:rstAndUIComponentsToUI($RST)"/>
            </xsl:with-param>
        </xsl:call-template>
        
    </xsl:template>
</xsl:stylesheet>