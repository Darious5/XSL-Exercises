<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
    <style>
    * {
    font-family:arial;
    }
    
    table,tr,th,td {
    border:1px black solid;
    border-collapse:collapse;
    }
    </style>
      <head>
        <title>La Liga</title>
      </head>
      <body>
        <H1>La Liga</H1>
        <table>
          <tr>
            <th>Equipo</th>
            <th>Puntuacion</th>
            <th>Partidos-Ganados</th>
            <th>Partidos-Perdidos</th>
            <th>Partidos-Empates</th>
          </tr>
          <xsl:apply-templates select="liga/equipo"/>
        </table>
      </body>
    </html>
  </xsl:template>
          <xsl:template match="equipo">
          <tr>
            <td><xsl:value-of select="@nombre"/></td>
            <td><xsl:value-of select="puntuacion"/></td>
            <td><xsl:value-of select="partidos-ganados"/></td>
            <td><xsl:value-of select="partidos-perdidos"/></td>
            <td><xsl:value-of select="partidos-empatados"/></td>
          </tr>
          </xsl:template>
</xsl:stylesheet>
