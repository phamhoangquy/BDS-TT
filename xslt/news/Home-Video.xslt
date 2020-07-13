<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row">

			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-12">
			<div class="card_img_video">

				<a>
					<xsl:attribute name="data-fancybox">
						<xsl:text>gallery-</xsl:text>
						<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="href">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<div class="hidden" style='display:none;'>
					<xsl:apply-templates select="NewsImages">
						<xsl:with-param select="position()" name="NewsPosition" />
					</xsl:apply-templates>
				</div>

				<div class="video"><em class="lnr lnr-chevron-right-circle"></em></div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:param name="NewsPosition"></xsl:param>
		<xsl:if test="position()>1">
			<a>
				<xsl:attribute name="data-fancybox">
					<xsl:text>gallery-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="$NewsPosition"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of select="BriefContent"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="Title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</xsl:attribute>

				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
