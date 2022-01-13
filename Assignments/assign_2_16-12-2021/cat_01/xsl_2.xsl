<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
		<h1 style="text-align:center">Employee Management System</h1>
		<table border="2" align="center">
		<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>AGE</th>
		<th>SALARY</th>
		<th>EMAIL</th>
		<th>MobNum</th>
		<th>Designation</th>
		<th>Promotion</th>
		</tr>
		<xsl:for-each select="Company/Employee">
		<xsl:sort select="Emp-name"></xsl:sort>
		<tr>
		<td>
			<xsl:value-of select="Employee_id"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-name"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-age"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-salary"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-emailid"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-Phonenum"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-designation"></xsl:value-of>
		</td>
        <td>
            <xsl:value-of select="Promotion"></xsl:value-of>
        </td>
        <!-- <xsl:choose>
        <xsl:when test = "Emp-age &gt;=40 and Emp-age &lt;=49"><script> document.getElementsByTagName("Promotion")[0].childNodes[0].nodeValue="hee"</script></xsl:when>
        <xsl:when test = "Emp-age &gt;50">Associate Project Manager</xsl:when>
        <xsl:when test = "Emp-age &lt;40">Developer</xsl:when>
        </xsl:choose> -->
		</tr>
		<!--</xsl:if>-->
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>