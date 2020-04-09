<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" doctype-system="about:legacy-compat" indent="yes"/>

    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title>Inicio</title>
                <link rel="stylesheet" type="text/css" href="styles.css" />
            </head>
            <body>
                <header>
                    <a target="_blank">
                        <xsl:attribute name="href">
                            <xsl:value-of select="rss/channel/link"/>
                        </xsl:attribute>
                        <h1>
                            <xsl:value-of select="rss/channel/title"/>
                        </h1>
                    </a>
                    <p>
                       <xsl:value-of select="rss/channel/description"/>
                    </p>
                </header>
                <div class="main">
                <xsl:for-each select="rss/channel/item">
                    <div class="article">
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="enclosure/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="title"/>
                            </xsl:attribute>
                        </img>
                        <a target="_blank">
                            <xsl:attribute name="href">
                                <xsl:value-of select="link"/>
                            </xsl:attribute>
                            <h1>
                                <xsl:value-of select="title"/>
                            </h1>
                        </a>
                        <h3>by: <xsl:value-of select="author"/></h3>
                        <p>
                            <xsl:value-of select="description"/>
                        </p>
                    </div>
                </xsl:for-each>
                </div>
                <footer>
                    <p>
                        <b>Categoria: </b>
                        <xsl:value-of select="rss/channel/category"/>
                    </p>
                    <p>
                        <b>Fecha de publicación: </b>
                        <xsl:value-of select="rss/channel/pubDate"/>
                    </p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
