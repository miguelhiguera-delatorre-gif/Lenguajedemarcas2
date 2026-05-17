<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>

<h1>EJERCICIO 2</h1>

<h2>Ciclos formativos del instituto</h2>

<ul>
    <xsl:for-each select="/instituto/ciclos/especialidad//ciclo">
        <li>
            <xsl:value-of select="."/>
            -
            <xsl:value-of select="@grado"/>
        </li>
    </xsl:for-each>
</ul>

</body>
</html>
</xsl:template>

</xsl:stylesheet>

