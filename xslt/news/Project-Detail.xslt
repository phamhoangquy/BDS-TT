<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="menu">
			<div class="container">
				<div class="head-menu link-to-section">
					<ul>
						<li> <a href="section-id-1">Tổng quan dự án </a></li>
						<li> <a href="section-id-2">Vị trí </a></li>
						<li> <a href="section-id-3">Tiện ích </a></li>
						<li> <a href="section-id-4">Tin tức liên quan</a></li>
					</ul>
				</div>
			</div>
		</section>
		<xsl:if test="position()=1">
			<section class="project-news" id='section-id-1'>
				<div class="container">
					<div class="head-title">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
					</div>
					<xsl:apply-templates select="News"></xsl:apply-templates>

				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="location-project">
				<div class="container">
					<div class="title">
						<h3>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h3>
					</div>
					<xsl:apply-templates select="News-1"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>

		<!-- 
		<section class="project-suncity">
			<div class="container">
				<div class="row">
					<div class="col-lg-5">
						<div class="content">
							<p>Là chuyên gia trong lĩnh vực bất động sản Tân Thịnh hoạt động theo phương châm "Sự an cư
								lạc
								nghiệp khách hàng là mục tiêu phấn đấu của chúng tôi". Với hoài bão đem đến những vùng
								đất
								mới, đem cuộc sống an cư lạc nghiệp và phồn vinh đến cho mọi người dân. Địa ốc Tân Thịnh
								tự
								hào là nhà phát triển bất động sản chuyên nghiệp và tận tâm, gắn lợi nhuận kinh doanh
								với
								lợi ích xã hội.ntchuyên gia trong lĩnh vực bất động sản Tân Thịnh hoạt động theo phương
								châm
								"Sự an cư lạc nghiệp khách hàng là mục tiêu phấn đấu của chúng tôi"ntlà chuyên gia trong
								lĩnh vực bất động sản Tân Thịnh hoạt động theo phương châm "Sự an cư lạc nghiệp khách
								hàng
								là mục tiêu phấn đấu của chúng tôi</p>
						</div>
					</div>
					<div class="col-12 col-md-12 col-lg-3 suncity_img">
						<div class="card_img_1">
							<div class="img"><img src="./img/project-detail/project-news-suncity-1.png" alt=""></div>
						</div>
						<div class="card_img_2">
							<div class="img"><img src="./img/project-detail/project-news-suncity-3.png" alt=""></div>
						</div>
					</div>
					<div class="col-12 col-md-12 col-lg-4 suncity_img">
						<div class="card_img_3">
							<div class="img"><img src="./img/project-detail/project-news-suncity-2.png" alt=""></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="text-utilities">
			<div class="container">
				<div class="title">
					<h3>Tiện ích</h3>
				</div>
				<div class="caption">
					<div class="text">Một trong những yếu tố quan trọng trong việc quyết định đến sự thành công của dự
						án đó
						chính là tiện ích bên trong cũng như bên ngoài và các khu vực xung quanh dự án. Bên trong của
						khu
						vực Khu đô thị The Sun city được thiết kế tích hợp nhiều tiện ích đạt chuẩn Singapora:</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="news-suncity">
							<div class="swiper-container">
								<div class="news-swiper-wrapper">
									<div class="nav-arrow-next"><img src="./img/home/brand/next.png" alt=""></div>
								</div>
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div class="card-body"><a href="">
												<div class="img"><img src="./img/project-detail/news-suncity.png"
														alt="">
												</div>
											</a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="title">
							<h4>Trung tâm thuong mại</h4>
						</div>
						<div class="content">
							<p>Là chuyên gia trong lĩnh vực bất động sản Tân Thịnh hoạt động theo phương châm "Sự an cư
								lạc
								nghiệp khách hàng là mục tiêu phấn đấu của chúng tôi". Với hoài bão đem đến những vùng
								đất
								mới, đem cuộc sống an cư lạc nghiệp và phồn vinh đến cho mọi người dân. Địa ốc Tân Thịnh
								tự
								hào là nhà phát triển bất động sản chuyên nghiệp và tận tâm, gắn lợi nhuận kinh doanh
								với
								lợi ích xã hội.ntchuyên gia trong lĩnh vực bất động sản Tân Thịnh hoạt động theo phương
								châm
								"Sự an cư lạc nghiệp khách hàng là mục tiêu phấn đấu của chúng tôi"ntlà chuyên gia trong
								lĩnh vực bất động sản Tân Thịnh hoạt động theo phương châm "Sự an cư lạc nghiệp khách
								hàng
								là mục tiêu phấn đấu của chúng tôi</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="form-project-detail">
			<div class="container">
				<div class="title">
					<h3>Đăng ký nhận thông tin </h3>
				</div>
				<div class="content">
					<p>Hội tụ cả hai yếu tố sinh thái và kinh tế, dự án The Sun city của công ty Việt Hưng Phát đang trở
						thành tâm điểm đầu tư, thu hút sự quan tâm của khách hàng muốn tìm kiếm cho mình một nơi lâu
						dài,
						yên tĩnh hoặc một giải pháp đấu tư sinh lợi hiệu quả. Và với múc giá hợp lý cùng những ưu đãi
						hấp
						dẫn, sản phẩm The Sun city đã được các khách hàng thông minh lựa chọn.</p>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="wrap-form">
							<div class="row">
								<div class="form-group col-12 col-md-6 col-6">
									<input class="form-control" type="text" placeholder="Họ và tên">
								</div>
								<div class="form-group col-12 col-md-6 col-6">
									<input class="form-control" type="text" placeholder="Địa chỉ">
								</div>
								<div class="form-group col-12 col-md-6 col-6">
									<input class="form-control" type="text" placeholder="Email">
								</div>
								<div class="form-group col-12 col-md-6 col-6">
									<input class="form-control" type="text" placeholder="Số điện thoại">
								</div>
							</div>
							<div class="frm-btnwrap">
								<div class="frm-btn">
									<input type="submit" value="ĐĂNG KÝ">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="news-silde">
			<div class="container">
				<div class="head-title">
					<h2>Tin tức liên quan</h2>
				</div>
				<div class="news-swiper-wrapper">
					<div class="nav-arrow-prev"><img src="./img/home/brand/pre.png" alt=""></div>
					<div class="nav-arrow-next"><img src="./img/home/brand/next.png" alt=""></div>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="card-body"><a href="">
									<div class="img shine"> <img src="./img/home/news/news-1.png" alt=""></div>
									<div class="content">
										<time>04.02.2020</time>
										<p>Xem Xét Đầu Tư Dự Án Sân Bay Long Thành Trong Tháng 3</p><a href="">XEM
											THÊM</a><em class="mdi mdi-arrow-right"></em>
									</div>
								</a></div>
						</div>
						<div class="swiper-slide">
							<div class="card-body"><a href="">
									<div class="img shine"> <img src="./img/home/news/news-2.png" alt=""></div>
									<div class="content">
										<time>04.02.2020</time>
										<p>Xem Xét Đầu Tư Dự Án Sân Bay Long Thành Trong Tháng 3</p><a href="">XEM
											THÊM</a><em class="mdi mdi-arrow-right"></em>
									</div>
								</a></div>
						</div>
						<div class="swiper-slide">
							<div class="card-body"><a href="">
									<div class="img shine"> <img src="./img/home/news/news-3.png" alt=""></div>
									<div class="content">
										<time>04.02.2020</time>
										<p>Xem Xét Đầu Tư Dự Án Sân Bay Long Thành Trong Tháng 3</p><a href="">XEM
											THÊM</a><em class="mdi mdi-arrow-right"></em>
									</div>
								</a></div>
						</div>
					</div>
				</div>
			</div>
		</section> -->
	</xsl:template>
	<xsl:template match="News">
		<div class="row">
			<div class="col-lg-6">
				<div class="card_img line_1">
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
				</div>
			</div>
			<div class="col-lg-6">
				<div class="title">
					<h3>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h3>
				</div>
				<div class="content">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<xsl:if test="position()=1">
			<div class="caption">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
			<div class="location-silde">
				<div class="row">
					<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<div class="col-12 col-md-6 col-lg-3">
			<div class="card">
				<div class="card-body">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="caption">
					<div class="text">
						<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
