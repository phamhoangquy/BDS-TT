<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="news">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-12 col-md-6 col-lg-4">
			<div class="card-body">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>

					<div class="img shine"> <img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<div class="content">
						<time>
							<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
						</time>
						<p>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</p><a>Xem thêm</a><em class="mdi mdi-arrow-right"></em>
					</div>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
