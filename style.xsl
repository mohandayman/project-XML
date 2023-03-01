<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >



<xsl:template match="/">
<html>
	<head>
		<title>employees</title>
	</head>
	<h3>employees </h3>
	<body>
		<table border="1" align="center">
		<tr>
			<th> name</th>
			<th> mobile phone</th>
			<th> work phone</th>
			<th> city</th>
			<th> street</th>
			<th> region</th>
			<th> bulding number </th>
			<th> email</th>
			
		</tr>
		
			<tbody>
			<xsl:for-each select="/employees/employee">
    <tr>
      <td><xsl:value-of select="/employees/employee/name"/></td>
      <td><xsl:value-of select="/employees/employee/phones/phone"/></td>
    </tr>
    </xsl:for-each>
				
			</tbody>
		</table>
	
	
	</body>
</html>

</xsl:template>	





</xsl:stylesheet>
