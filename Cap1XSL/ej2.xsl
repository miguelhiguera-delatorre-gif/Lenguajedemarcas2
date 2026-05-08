<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
<head>
    <title>hola</title>
     <link rel="stylesheet" type="text/css" href="ejcss.css"/>
</head>


<h2>Ejercicio 2❤️ </h2>

<table border="1">


        <tr>    
            <td>Ejercicio 2.1</td>

            <td>
                <!-- 2.1 Nombre de los módulos que se imparten en el instituto. -->
                <xsl:for-each select="/ies/modulos/modulo">
                <p><xsl:value-of select="nombre"/></p>
                </xsl:for-each>
            </td>
        </tr>



        <tr> 
        <td>Ejercicio 2.2</td>
            <td>
            <!-- 2.2 Nombre de los módulos del ciclo DAM. -->

            <xsl:for-each select="/ies/modulos/modulo[ciclo = 'DAM']">
            <p><xsl:value-of select="nombre"/></p>
            </xsl:for-each>
            </td>
        </tr>


        <tr> 
        <td>Ejercicio 2.3</td>
            <td>
            <!-- 2.3 Nombre de los módulos que se imparten en el segundo curso de cualquier ciclo. -->
            <xsl:for-each select="/ies/modulos/modulo[curso = 2]">
            <p><xsl:value-of select="nombre"/></p>
            </xsl:for-each>
            </td>
        </tr>


        <tr>
        <td>Ejercicio 2.4</td>
            <td> 
            <!-- 2.4 Nombre de los módulos de menos de 5 horas semanales. -->
            <xsl:for-each select="/ies/modulos/modulo[horasSemanales &lt; 5]">
            <p><xsl:value-of select="nombre"/></p>
            </xsl:for-each>
            </td>
        </tr>



        <tr> 
        <td>Ejercicio 2.5</td>
            <td>
            <!-- 2.5 Nombre de los módulos que se imparten en el primer curso de DAM. -->
            <xsl:for-each select="/ies/modulos/modulo[curso = 1][ciclo = 'DAM']">
            <p><xsl:value-of select="nombre"/></p>
            </xsl:for-each>
            </td>
        </tr>



        <tr> 
        <td>Ejercicio 2.6</td>
            <td>
            <!-- 2.6 Horas semanales de los módulos de más de 4 horas semanales. -->
            <xsl:for-each select="/ies/modulos/modulo[horasSemanales &gt; 4]">
            <p><xsl:value-of select="horasSemanales"/></p>
            </xsl:for-each>
            </td>
        </tr>

</table>

</body>
</html>
</xsl:template>

</xsl:stylesheet>