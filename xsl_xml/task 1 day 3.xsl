<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<head>
				<title/>
			</head>
			<body>
				<table border="5">
					<tr>
						<th>TITLE</th>
						<th>ARTIST</th>
					</tr>
					<xsl:for-each select="CATALOG/CD">
						<xsl:if test="PRICE>10">
							<tr style="background-color:green">
								<td>
									<xsl:value-of select="TITLE"/>
								</td>
								<td>
									<xsl:value-of select="ARTIST"/>
								</td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
