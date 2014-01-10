<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:include href="/_Site Support/Formats/SPIF/spif-templates"/>
    <xsl:output indent="yes" method="xml"/>

    <xsl:template match="/">
        <xsl:apply-templates mode="right-column" select="system-data-structure">
            <xsl:with-param name="vertical-position">top</xsl:with-param> 
        </xsl:apply-templates>
    </xsl:template>
 </xsl:stylesheet>