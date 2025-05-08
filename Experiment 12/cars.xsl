
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
	    <head>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                    }

                    h2 {
                        color: #333;
                    }

                    table {
                        width: 70%;
                        margin: 20px auto;
                        border-collapse: collapse;
                    }

                    th, td {
                        padding: 10px;
                        text-align: left;
                        border: 1px solid #ddd;
                    }

                    th {
                        background-color: #4CAF50;
                        color: white;
                    }

                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }

                    tr:hover {
                        background-color: #ddd;
                    }
                </style>
            </head>
            <body>
                <h2>Car List</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Car Name</th>
                        <th>Manufacturer</th>
                        <th>Year</th>
                        <th>Price</th>
                    </tr>

                    <xsl:for-each select="cars/car">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="manufacturer"/></td>
                            <td><xsl:value-of select="year"/></td>
                            <td><xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
