<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <hmtl>
            <head>
                <title>New Version!</title>
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
        </hmtl>
    </xsl:template>
</xsl:transform>
