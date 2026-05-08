<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>

<h2>Ejercicio 1 :)</h2>

<!-- 1.1Nombre del instituo -->
<p>1.1-<xsl:value-of select="/ies/nombre"/></p>


<!-- 1.2 Página web del instituto -->
<span></span>
<p>1.2-<xsl:value-of select="/ies/web"/></p>

<!-- 1.3 Nombre de los Ciclos Formativos -->
<p>1.3-<xsl:value-of select="/ies/ciclos/ciclo/nombre[1]"/></p>
<p>1.3-<xsl:value-of select="/ies/ciclos/ciclo[2]/nombre"/></p>

<!-- 1.4 Siglas por las que se conocen los Ciclos Formativos -->

<xsl:for-each select="/ies/ciclos/ciclo">
<p>1.4-<xsl:value-of select="@id"/></p>
</xsl:for-each>

<!-- 1.5 Años en los que se publicaron las órdenes de título de los Ciclos Formativos -->
<xsl:for-each select="/ies/ciclos/ciclo/ordenTitulo">
<p>1.5-<xsl:value-of select="@año"/></p>
</xsl:for-each>

<!-- 1.6 Ciclos Formativos de Grado Medio (se trata de obtener el elemento <ciclo> completo). -->
<p>1.6-<xsl:value-of select="/ies/ciclos/ciclo"/></p>

<!-- 1.7 Nombre de los Ciclos Formativos anteriores a 2010 -->

<p>1.7-<xsl:value-of select="/ies/ciclos/ciclo[ordenTitulo/@año &lt; 2010]"/></p> 

<!-- 1.8 Nombre de los Ciclos Formativos de 2009 o 2011 -->
<xsl:for-each select="/ies/ciclos/ciclo[ordenTitulo/@año=2009 or ordenTitulo/@año=2011]">
<p>1.8-<xsl:value-of select="nombre"/></p> 
</xsl:for-each>


</body>
</html>
</xsl:template>

</xsl:stylesheet>