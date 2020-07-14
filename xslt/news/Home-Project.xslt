<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row">
			<xsl:if test="position()=1">
				<xsl:apply-templates select="/NewsList/News" mode='News-1'></xsl:apply-templates>
			</xsl:if>
			<div class="col-lg-4">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>


			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<xsl:if test="position()=1">

			<div class="col-lg-8"><a href="">

					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>

					<div class="card-body">
						<div class="img">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<div class="content">
							<ul>
								<li> <a href="">
										<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									</a></li>
								<li> <a href="">
										<xsl:attribute name="href">
											<xsl:value-of select="Url"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="title">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>
										<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
										<xsl:value-of select="EditLink" disable-output-escaping="yes">
										</xsl:value-of>
									</a></li>
							</ul>
						</div>
					</div>
				</a></div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position()>1 and position() &lt;4">

			<div class="img_project"><a href="">

					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>

					<div class="new-img">
						<div class="img"><img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<div class="content">
							<ul>
								<li> <a href="">DỰ ÁN TRIỂN KHAI </a><a href="">
										<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
										<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
									</a></li>
							</ul>
						</div>
					</div>
				</a></div>
		</xsl:if>

	</xsl:template>

</xsl:stylesheet>
