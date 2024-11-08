<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Employee Statistics</h2>
                <p>Total number of employees: <xsl:value-of select="count(employees/employee)" /></p>
                <p>Total salary expense: $<xsl:value-of select="sum(employees/employee/salary)" /></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
