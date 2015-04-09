<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
    extension-element-prefixes="msxsl"
    xmlns:date="http://example.org"
>
  <msxsl:script language="JScript" implements-prefix="date">
    function today()
    {
    // JJJJ-MM-TT
    var date = new Date();
    return date.getFullYear() + "-" + date.getMonth() + "-" + date.getDate();
    }
  </msxsl:script>
  <xsl:output method="xml" indent="yes"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="/">
    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
      <xsl:for-each select="//*[@Url]">
        <url>
          <loc>http://michaco.github.io/Documentation/CacheManager/Help/<xsl:value-of select="@Url"/></loc>
          <changefreq>weekly</changefreq>
          <priority>0.3</priority>
          <lastmod><xsl:value-of  select="date:today()"/></lastmod>
        </url>
      </xsl:for-each>
    </urlset>
  </xsl:template>
</xsl:stylesheet>
