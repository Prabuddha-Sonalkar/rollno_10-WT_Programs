<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>List of Students</h2>
                <ul>
                    <!-- Using child axis to select student elements -->
                    <xsl:for-each select="students/child::student">
                        <li>
                            <xsl:value-of select="name" />
                            <ul>
                                <!-- Using descendant axis to select grade elements -->
                                <xsl:for-each select="descendant::grade">
                                    <li>Grade: <xsl:value-of select="." /></li>
                                </xsl:for-each>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
