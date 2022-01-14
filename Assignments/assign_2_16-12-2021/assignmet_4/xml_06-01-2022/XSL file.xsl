<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
		<h1 style="text-align:center;color:darkBlue">Our Top Lawyers</h1>
		<table border="2" align="center" style="border:2px blue solid">
		<tr>
		<th>Name</th>
		<th>Register_id</th>
		<th>Specialization</th>
		<th>Phone</th>
		</tr>
		<xsl:for-each select="PrimaFaciae/Consultants">
		<xsl:sort select="Name"></xsl:sort>
		<xsl:if test="string-length(Register_id) &lt;10">
		<tr align="center">
		<td>
		<xsl:value-of select="Name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Register_id"></xsl:value-of>
		</td>
		<xsl:choose>
			<xsl:when test="string-length(Register_id) &lt;=8">
				<td style="color:black">
					<xsl:value-of select="Specilization"></xsl:value-of>
				</td>
			</xsl:when>
			<xsl:otherwise>
				<td style="color:red">
					<xsl:value-of select="Specilization"></xsl:value-of>
				</td>
			</xsl:otherwise>
		</xsl:choose>
		
		<td>
		<xsl:value-of select="Phone"></xsl:value-of>
		</td>
		</tr>
		</xsl:if>
		</xsl:for-each>
		</table>

		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>