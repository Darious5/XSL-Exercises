<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <style>
    th{
      border-color:black;
      border-style:outset;
      border-width:5px;
      background-color:#C2D4BD;
    }
    table,td,tr{
      border-color:black;
      border-style:inset;
      border-width:3px;
    }
    h1,h2{
      border-color:black;
      border-style:ridge;
      border-width:5px;
      display:inline-block;
      padding:2px;
    }
    body{
      background-color:#F0F0F0;
    }
  </style>
    <head>
      <div><h1>Base de Datos empresas</h1></div>
      <div><h2>Dia: <xsl:value-of select="Bolsa/@dia"/></h2></div>
      <div><h2>Hora: <xsl:value-of select="Bolsa/@hora"/></h2></div>
    </head>
    <body>
      <table>
        <tr>
          <th>Nombre</th>
          <th>Simbolo</th>
          <th>Precio</th>
        </tr>
        <xsl:for-each select="Bolsa/Empresa">
            <tr>
              <td>
              <xsl:value-of select="Nombre"/>
                <xsl:value-of select="@indice"/>
                <xsl:if test="@indice='general'">(*)</xsl:if>
              </td>
              <td><xsl:value-of select="Simbolo"/></td>
              <td>
                <xsl:attribute name="bgcolor">
                  <xsl:choose>
                    <xsl:when test="Precio &gt; 75">#C0D3FF</xsl:when>
                    <xsl:when test="Precio &lt; 25">#FFC0C0</xsl:when>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:value-of select="Precio"/>
              </td>
            </tr>
        </xsl:for-each>
      </table>
    <p>(*) Estos datos son sacados del indice general, no de la base de datos de IBEX35</p>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
