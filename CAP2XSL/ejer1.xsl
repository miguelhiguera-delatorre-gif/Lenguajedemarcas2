<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>

<h1>EJERCICIO1</h1>

<!-- 1. ¿Qué ciclos formativos se imparten en el instituto -->
    <h3>1.Ciclos que se imparten</h3>
    <xsl:for-each select="/instituto/ciclos/especialidad/ciclo">
            <p>-<xsl:value-of select="@id"/></p>
    </xsl:for-each>
<!-- 2. ¿Cuáles ciclos formativos de grado medio se imparten en el instituto -->
    <h3>2.Ciclos de grado medio que se imparten</h3>
    <xsl:for-each select="/instituto/ciclos/especialidad/ciclo[@grado= 'Medio'] ">
            <p>-<xsl:value-of select="@id"/></p>
    </xsl:for-each>
<!-- 3. ¿Cuáles son los nombres de los alumnos suspendidos -->
    <h3>3.Nombres alumnos suspendidos</h3>
    <xsl:for-each select="/instituto/notas/clase/alumno[@aprobado='NO']">
            <p>-<xsl:value-of select="nombre"/></p>
    </xsl:for-each>
<!-- 4. ¿Cuántas mujeres cursan el ciclo de ASIR -->
   <h3>4. Número de mujeres en ASIR</h3>
<p>
    <xsl:value-of select="count(/instituto/notas/clase[@nombre='ASIR']/alumno/genero[.='Mujer'])"/>
</p>
<!-- 5. ¿Qué alumnos suspendidos tienen una cuenta en Hotmail -->
<h3>5.Suspendidos que tienen una cuenta en hotmail</h3>
    <xsl:for-each select="/instituto/notas/clase/alumno[@aprobado='NO' and contains(email,'hotmail')]">
            <p>-<xsl:value-of select="nombre"/></p>
    </xsl:for-each>
<!-- 6. ¿Cuál es la lista de clase de SMR -->
<h3>6.Lista de clase de SMR </h3>
 <xsl:for-each select="/instituto/notas/clase[@nombre='SMR']/alumno">
            <p>-<xsl:value-of select="nombre"/></p>
    </xsl:for-each>
<!-- 7. ¿En qué ciclos hay alumnos que han sacado un 10 -->
<h3>7.Nombre de los ciclos en los que hay alumnos que han sacado 10</h3>
<xsl:for-each select="/instituto/notas/clase[alumno/nota=10]">
            <p>-<xsl:value-of select="@nombre"/></p>
    </xsl:for-each>

<!-- 8. ¿Cuántos alumnos han aprobado ASIR -->
<h3>8.Alumnos aprobados en ASIR</h3>
<p>
    <xsl:value-of select="count(/instituto/notas/clase[@nombre='ASIR']/alumno[@aprobado='SI'])"/>
</p>

<!-- 9. ¿Qué porcentaje de aprobados tiene el centro -->
<h3>9.Porcentaje aprobados del centro</h3>
<p>
    <xsl:value-of 
        select="(count(/instituto/notas/clase/alumno[@aprobado='SI']) div count(/instituto/notas/clase/alumno)) * 100"/>
    %
</p>



</body>
</html>
</xsl:template>

</xsl:stylesheet>

