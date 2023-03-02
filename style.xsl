<?xml version="1.0" encoding="UTF-8"?>

   <xsl:stylesheet version = "1.0" 
      xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
   <xsl:template match = "/"> 
      <html> 
         <body> 
            <h2>Students</h2> 
            <table border = "1"> 
               <tr bgcolor = "#9acd32"> 
               
                  <th>name</th> 
                  <th>phone</th> 
                  <th>city</th> 
                  <th>street</th> 
                  <th>region</th>
                  <th>bulding no</th> 
                  <th>gmail</th> 
               </tr> 
					
               <xsl:for-each select = "employees/employee"> 
					
                  <tr> 
                     <td><xsl:value-of select = "name"/></td> 
                       <td><xsl:value-of select = "phones/phone[@type='mobile']"/></td> 
                     <td><xsl:value-of select = "addresses/address/city"/></td> 
                       <td><xsl:value-of select = "addresses/address/street"/></td> 
                      <td><xsl:value-of select = "addresses/address/region"/></td> 
						<td><xsl:value-of select = "addresses/address/buildingNo"/></td> 
						<td><xsl:value-of select = "email"/></td> 
                    
                    
                  </tr> 
               </xsl:for-each> 
					
            </table> 
         </body> 
      </html> 
   </xsl:template>  
</xsl:stylesheet>