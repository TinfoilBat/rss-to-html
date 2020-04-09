<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title>Inicio</title>
            </head>
            <body>
                <xsl:for-each select="rss/channel/item">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="enclosure/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="title"/>
                        </xsl:attribute>
                    </img>
                    <h1>
                        <xsl:value-of select="title"/>
                    </h1>
                    <h6>
                    by: <xsl:value-of select="author"/>
                    </h6>
                    <p>
                        <xsl:value-of select="description"/>
                    </p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
