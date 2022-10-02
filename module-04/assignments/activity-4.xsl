<?xml version="1.0" encoding="UTF-8"?>
<!-- xsl stylesheet declaration with xsl namespace: 
Namespace tells the xlst processor about which 
element is to be processed and which is used for output purpose only 
-->
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- xsl template declaration:  
template tells the xlst processor about the section of xml 
document which is to be formatted. It takes an XPath expression. 
In our case, it is matching document root element and will 
tell processor to process the entire document with this template. 
-->
    <xsl:template match="/">
        <!-- HTML tags 
      Used for formatting purpose. Processor will skip them and browser 
      will simply render them. 
    -->

        <html>
            <body>
                <h2>Products</h2>

                <h3>Table 1</h3>
                <!-- for-each processing instruction 
            Looks for each element matching the XPath expression 
          -->

                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Product Name</th>
                        <th>Manufacturer</th>
                        <th>Description</th>
                        <th>Price</th>

                    </tr>

                    <!-- for-each processing instruction 
            Looks for each element matching the XPath expression 
          -->

                    <xsl:for-each select="products/product">
                        <xsl:if test="@shippable='true'">

                            <tr>
                                <td>
                                    <xsl:value-of select="productName"/>
                                </td>
                                <td>
                                    <xsl:value-of select="manufacturer"/>
                                </td>
                                <td>
                                    <xsl:value-of select="description"/>
                                </td>
                                <td>
                                    <xsl:value-of select="prices"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>

                <br></br>
                <hr></hr>
                <h3>Table 2</h3>

                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Product Name</th>
                        <th>Manufacturer</th>
                        <th>Description</th>
                        <th>Price</th>

                    </tr>

                    <!-- for-each processing instruction 
            Looks for each element matching the XPath expression 
          -->

                    <xsl:for-each select="products/product">
                        <xsl:if test="manufacturer[@id='acme']">

                            <tr>
                                <td>
                                    <xsl:value-of select="productName"/>
                                </td>
                                <td>
                                    <xsl:value-of select="manufacturer"/>
                                </td>
                                <td>
                                    <xsl:value-of select="description"/>
                                </td>
                                <td>
                                    <xsl:value-of select="prices"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>

            </body>

        </html>

    </xsl:template>
</xsl:stylesheet>