<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <h1>Members of the fellowship of the ring that will come to the party:</h1>
        <style>
        th {
        background-color:green;
        color:white;
        }
        table,td,tr,th {
        border-style:solid;
        border-color:black;
        border-width:2px;
        border-collapse:collapse;
        }
        </style>
      </head>
      <body>
        <table>
          <tr>
            <thead>
              <th>Name</th>
              <th>Surname</th>
              <th>Address</th>
            </thead>
          </tr>
            <xsl:for-each select="fellowship/member[@dead='no']">
              <tr>
                <xsl:attribute name="bgcolor">
                  <xsl:choose>
                    <xsl:when test="@race='istar'">LightGoldenRodYellow</xsl:when>
                    <xsl:when test="@race='human'">LightPink</xsl:when>
                    <xsl:when test="@race='hobbit'">LightCyan</xsl:when>
                    <xsl:when test="@race='elf'">LightGreen</xsl:when>
                    <xsl:when test="@race='dwarf'">LightCoral</xsl:when>
                  </xsl:choose>
                </xsl:attribute>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="surname"/></td>
                <td><xsl:value-of select="home"/></td>
              </tr>
            </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
