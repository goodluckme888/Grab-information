<?xml version="1.0" ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">
<body>
<table id="basic">
<tr>
    <th bgcolor="#cccccc" colspan="4">Sales Data</th>
</tr>
<tr>
    <th bgcolor="#999999">ASIN</th>
    <th bgcolor="#999999">Title</th>
    <th bgcolor="#999999">List Price</th>
    <th bgcolor="#999999">Amazon Price</th>
</tr>
<xsl:for-each select="ProductInfo/Details">
<tr>
<td>
  <xsl:value-of select="Asin" /> 
</td>
<td>
  <xsl:value-of select="ProductName" /> 
</td>
<td>
  <xsl:value-of select="ListPrice" /> 
</td>
<td>
  <xsl:value-of select="OurPrice" /> 
</td>
</tr>
</xsl:for-each>
<tr><td colspan="3"></td></tr>
<tr>
    <td bgcolor="#ffcc00" colspan="3" align="right">
        <b>Average List Price</b>
    </td>
    <td bgcolor="#ffcc00">=ROUND(AVERAGE(C3:C<xsl:value-of 
select="count(ProductInfo/Details) + 2" />),2)
    </td>
</tr>
<tr>
    <td bgcolor="#ffcc00" colspan="3" align="right">
        <b>Average Amazon Price</b>
    </td>
    <td bgcolor="#ffcc00">=ROUND(AVERAGE(D3:D<xsl:value-of 
select="count(ProductInfo/Details) + 2" />),2)
    </td>
</tr>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
