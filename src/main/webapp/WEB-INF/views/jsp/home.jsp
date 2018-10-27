<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
<title>Anny & Anny</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href='<c:url value ="/resources/styles/bootstrap4/bootstrap.min.css" />'>
<link href='<c:url value ="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" />' rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href='<c:url value ="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css" />' />
<link rel="stylesheet" type="text/css" href='<c:url value ="/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css" />' />
<link rel="stylesheet" type="text/css" href='<c:url value ="/resources/plugins/OwlCarousel2-2.2.1/animate.css" />' />
<link rel="stylesheet" type="text/css" href='<c:url value ="/resources/styles/main_styles.css" />' />
<link rel="stylesheet" type="text/css" href='<c:url value ="/resources/styles/responsive.css" />' />
</head>

<body>

<div class="super_container">

	<!-- Header -->

	<header class="header trans_300">

		<!-- Top Navigation -->

		<div class="top_nav">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="top_nav_left">Seja-bem vinda(o)!</div>
					</div>
					<div class="col-md-6 text-right">
						<div class="top_nav_right">
							<ul class="top_nav_menu">

								<!-- Currency / Language / My Account -->
								<li class="language">
									<a href="#">
										Portugues
										<i class="fa fa-angle-down"></i>
									</a>
									<ul class="language_selection">
										<li><a href="#">Frances</a></li>
										<li><a href="#">Italiano</a></li>
										<li><a href="#">Alemao</a></li>
										<li><a href="#">Espanhol</a></li>
									</ul>
								</li>
								<li class="account">
									<a href="#">
										Minha Conta
										<i class="fa fa-angle-down"></i>
									</a>
									<ul class="account_selection">
										<li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>Fazer LogIn</a></li>
										<li><a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>Cadastrar</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Main Navigation -->

		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<a href="#">Anny&<span>Anny</span></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="#">home</a></li>
								<li><a href="#">shop</a></li>
								<li><a href="#">promotion</a></li>
								<li><a href="#">pages</a></li>
								<li><a href="#">blog</a></li>
								<li><a href="contact.html">contact</a></li>
							</ul>
							<ul class="navbar_user">
								<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a></li>
								<li class="checkout">
									<a href="#">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
										<span id="checkout_items" class="checkout_items">2</span>
									</a>
								</li>
							</ul>
							<div class="hamburger_container">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

	</header>

	<!--<div class="fs_menu_overlay"></div>-->


	<!-- Slider -->

	<!--<div class="main_slider" style="background-image:url(images/slider_1.jpg)">-->
		<!--<div class="container fill_height">-->
			<!--<div class="row align-items-center fill_height">-->
				<!--<div class="col">-->
					<!--<div class="main_slider_content">-->
						<!--<h6>Spring / Summer Collection 2017</h6>-->
						<!--<h1>Get up to 30% Off New Arrivals</h1>-->
						<!--<div class="red_button shop_now_button"><a href="#">shop now</a></div>-->
					<!--</div>-->
				<!--</div>-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->

	<!-- Banner -->



	<!-- New Arrivals -->
	<!--<div class="new_arrivals">-->
		<!--<div class="container">-->
			<!--<div class="row">-->
				<!--<div class="col text-center">-->
					<!--<div class="section_title new_arrivals_title">-->
						<!--<h2>New Arrivals</h2>-->
					<!--</div>-->
				<!--</div>-->
			<!--</div>-->
			<!--<div class="row align-items-center">-->
				<!--<div class="col text-center">-->
					<!--<div class="new_arrivals_sorting">-->
						<!--<ul class="arrivals_grid_sorting clearfix button-group filters-button-group">-->
							<!--<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center active is-checked" data-filter="*">all</li>-->
							<!--<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".women">women's</li>-->
							<!--<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".accessories">accessories</li>-->
							<!--<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".men">men's</li>-->
						<!--</ul>-->
					<!--</div>-->
				<!--</div>-->
			<!--</div>-->
			<!--<div class="row">-->
				<!--<div class="col">-->
					<!--<div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>-->

						<!--&lt;!&ndash; Product 1 &ndash;&gt;-->

						<!--<div class="product-item men">-->
							<!--<div class="product discount product_filter">-->
								<!--<div class="product_image">-->
									<!--<img src="images/product_1.png" alt="">-->
								<!--</div>-->
								<!--<div class="favorite favorite_left"></div>-->
								<!--<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>-->
								<!--<div class="product_info">-->
									<!--<h6 class="product_name"><a href="single.html">Fujifilm X100T 16 MP Digital Camera (Silver)</a></h6>-->
									<!--<div class="product_price">$520.00<span>$590.00</span></div>-->
								<!--</div>-->
							<!--</div>-->
							<!--<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>-->
						<!--</div>-->

						<!--&lt;!&ndash; Product 2 &ndash;&gt;-->

						<!--<div class="product-item women">-->
							<!--<div class="product product_filter">-->
								<!--<div class="product_image">-->
									<!--<img src="images/product_2.png" alt="">-->
								<!--</div>-->
								<!--<div class="favorite"></div>-->
								<!--<div class="product_bubble product_bubble_left product_bubble_green d-flex flex-column align-items-center"><span>new</span></div>-->
								<!--<div class="product_info">-->
									<!--<h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch FHD Monitor</a></h6>-->
									<!--<div class="product_price">$610.00</div>-->
								<!--</div>-->
							<!--</div>-->
							<!--<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>-->
						<!--</div>-->

						<!--&lt;!&ndash; Product 3 &ndash;&gt;-->

						<!--<div class="product-item women">-->
							<!--<div class="product product_filter">-->
								<!--<div class="product_image">-->
									<!--<img src="images/product_3.png" alt="">-->
								<!--</div>-->
								<!--<div class="favorite"></div>-->
								<!--<div class="product_info">-->
									<!--<h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout Edition</a></h6>-->
									<!--<div class="product_price">$120.00</div>-->
								<!--</div>-->
							<!--</div>-->
							<!--<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>-->
						<!--</div>-->

						<!--&lt;!&ndash; Product 4 &ndash;&gt;-->

						<!--<div class="product-item accessories">-->
							<!--<div class="product product_filter">-->
								<!--<div class="product_image">-->
									<!--<img src="images/product_4.png" alt="">-->
								<!--</div>-->
								<!--<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>-->
								<!--<div class="favorite favorite_left"></div>-->
								<!--<div class="product_info">-->
									<!--<h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal Label Printer</a></h6>-->
									<!--<div class="product_price">$410.00</div>-->
								<!--</div>-->
							<!--</div>-->
							<!--<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>-->
						<!--</div>-->

						<!--&lt;!&ndash; Product 5 &ndash;&gt;-->

						<!--<div class="product-item women men">-->
							<!--<div class="product product_filter">-->
								<!--<div class="product_image">-->
									<!--<img src="images/product_5.png" alt="">-->
								<!--</div>-->
								<!--<div class="favorite"></div>-->
								<!--<div class="product_info">-->
									<!--<h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold & Grey</a></h6>-->
									<!--<div class="product_price">$180.00</div>-->
								<!--</div>-->
							<!--</div>-->
							<!--<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>-->
						<!--</div>-->

						<!--&lt;!&ndash; Product 6 &ndash;&gt;-->

						<!--<div class="product-item accessories">-->
							<!--<div class="product discount product_filter">-->
								<!--<div class="product_image">-->
									<!--<img src="images/product_6.png" alt="">-->
								<!--</div>-->
								<!--<div class="favorite favorite_left"></div>-->
								<!--<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>-->
								<!--<div class="product_info">-->
									<!--<h6 class="product_name"><a href="#single.html">Fujifilm X100T 16 MP Digital Camera (Silver)</a></h6>-->
									<!--<div class="product_price">$520.00<span>$590.00</span></div>-->
								<!--</div>-->
							<!--</div>-->
							<!--<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>-->
						<!--</div>-->

						<!--&lt;!&ndash; Product 7 &ndash;&gt;-->

						<!--<div class="product-item women">-->
							<!--<div class="product product_filter">-->
								<!--<div class="product_image">-->
									<!--<img src="images/product_7.png" alt="">-->
								<!--</div>-->
								<!--<div class="favorite"></div>-->
								<!--<div class="product_info">-->
									<!--<h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch FHD Monitor</a></h6>-->
									<!--<div class="product_price">$610.00</div>-->
								<!--</div>-->
							<!--</div>-->
							<!--<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>-->
						<!--</div>-->

						<!--&lt;!&ndash; Product 8 &ndash;&gt;-->

						<!--<div class="product-item accessories">-->
							<!--<div class="product product_filter">-->
								<!--<div class="product_image">-->
									<!--<img src="images/product_8.png" alt="">-->
								<!--</div>-->
								<!--<div class="favorite"></div>-->
								<!--<div class="product_info">-->
									<!--<h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout Edition</a></h6>-->
									<!--<div class="product_price">$120.00</div>-->
								<!--</div>-->
							<!--</div>-->
							<!--<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>-->
						<!--</div>-->

						<!--&lt;!&ndash; Product 9 &ndash;&gt;-->

						<!--<div class="product-item men">-->
							<!--<div class="product product_filter">-->
								<!--<div class="product_image">-->
									<!--<img src="images/product_9.png" alt="">-->
								<!--</div>-->
								<!--<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>-->
								<!--<div class="favorite favorite_left"></div>-->
								<!--<div class="product_info">-->
									<!--<h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal Label Printer</a></h6>-->
									<!--<div class="product_price">$410.00</div>-->
								<!--</div>-->
							<!--</div>-->
							<!--<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>-->
						<!--</div>-->

						<!--&lt;!&ndash; Product 10 &ndash;&gt;-->

						<!--<div class="product-item men">-->
							<!--<div class="product product_filter">-->
								<!--<div class="product_image">-->
									<!--<img src="images/product_10.png" alt="">-->
								<!--</div>-->
								<!--<div class="favorite"></div>-->
								<!--<div class="product_info">-->
									<!--<h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold & Grey</a></h6>-->
									<!--<div class="product_price">$180.00</div>-->
								<!--</div>-->
							<!--</div>-->
							<!--<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>-->
						<!--</div>-->
					<!--</div>-->
				<!--</div>-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->

	<!-- Best Sellers -->
	<!--<div class="best_sellers">-->
		<!--<div class="container">-->
			<!--<div class="row">-->
				<!--<div class="col text-center">-->
					<!--<div class="section_title new_arrivals_title">-->
						<!--<h2>Best Sellers</h2>-->
					<!--</div>-->
				<!--</div>-->
			<!--</div>-->
			<!--<div class="row">-->
				<!--<div class="col">-->
					<!--<div class="product_slider_container">-->
						<!--<div class="owl-carousel owl-theme product_slider">-->

							<!--&lt;!&ndash; Slide 1 &ndash;&gt;-->

							<!--<div class="owl-item product_slider_item">-->
								<!--<div class="product-item">-->
									<!--<div class="product discount">-->
										<!--<div class="product_image">-->
											<!--<img src="images/product_1.png" alt="">-->
										<!--</div>-->
										<!--<div class="favorite favorite_left"></div>-->
										<!--<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>-->
										<!--<div class="product_info">-->
											<!--<h6 class="product_name"><a href="single.html">Fujifilm X100T 16 MP Digital Camera (Silver)</a></h6>-->
											<!--<div class="product_price">$520.00<span>$590.00</span></div>-->
										<!--</div>-->
									<!--</div>-->
								<!--</div>-->
							<!--</div>-->

							<!--&lt;!&ndash; Slide 2 &ndash;&gt;-->

							<!--<div class="owl-item product_slider_item">-->
								<!--<div class="product-item women">-->
									<!--<div class="product">-->
										<!--<div class="product_image">-->
											<!--<img src="images/product_2.png" alt="">-->
										<!--</div>-->
										<!--<div class="favorite"></div>-->
										<!--<div class="product_bubble product_bubble_left product_bubble_green d-flex flex-column align-items-center"><span>new</span></div>-->
										<!--<div class="product_info">-->
											<!--<h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch FHD Monitor</a></h6>-->
											<!--<div class="product_price">$610.00</div>-->
										<!--</div>-->
									<!--</div>-->
								<!--</div>-->
							<!--</div>-->

							<!--&lt;!&ndash; Slide 3 &ndash;&gt;-->

							<!--<div class="owl-item product_slider_item">-->
								<!--<div class="product-item women">-->
									<!--<div class="product">-->
										<!--<div class="product_image">-->
											<!--<img src="images/product_3.png" alt="">-->
										<!--</div>-->
										<!--<div class="favorite"></div>-->
										<!--<div class="product_info">-->
											<!--<h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout Edition</a></h6>-->
											<!--<div class="product_price">$120.00</div>-->
										<!--</div>-->
									<!--</div>-->
								<!--</div>-->
							<!--</div>-->

							<!--&lt;!&ndash; Slide 4 &ndash;&gt;-->

							<!--<div class="owl-item product_slider_item">-->
								<!--<div class="product-item accessories">-->
									<!--<div class="product">-->
										<!--<div class="product_image">-->
											<!--<img src="images/product_4.png" alt="">-->
										<!--</div>-->
										<!--<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>-->
										<!--<div class="favorite favorite_left"></div>-->
										<!--<div class="product_info">-->
											<!--<h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal Label Printer</a></h6>-->
											<!--<div class="product_price">$410.00</div>-->
										<!--</div>-->
									<!--</div>-->
								<!--</div>-->
							<!--</div>-->

							<!--&lt;!&ndash; Slide 5 &ndash;&gt;-->

							<!--<div class="owl-item product_slider_item">-->
								<!--<div class="product-item women men">-->
									<!--<div class="product">-->
										<!--<div class="product_image">-->
											<!--<img src="images/product_5.png" alt="">-->
										<!--</div>-->
										<!--<div class="favorite"></div>-->
										<!--<div class="product_info">-->
											<!--<h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold & Grey</a></h6>-->
											<!--<div class="product_price">$180.00</div>-->
										<!--</div>-->
									<!--</div>-->
								<!--</div>-->
							<!--</div>-->

							<!--&lt;!&ndash; Slide 6 &ndash;&gt;-->

							<!--<div class="owl-item product_slider_item">-->
								<!--<div class="product-item accessories">-->
									<!--<div class="product discount">-->
										<!--<div class="product_image">-->
											<!--<img src="images/product_6.png" alt="">-->
										<!--</div>-->
										<!--<div class="favorite favorite_left"></div>-->
										<!--<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>-->
										<!--<div class="product_info">-->
											<!--<h6 class="product_name"><a href="single.html">Fujifilm X100T 16 MP Digital Camera (Silver)</a></h6>-->
											<!--<div class="product_price">$520.00<span>$590.00</span></div>-->
										<!--</div>-->
									<!--</div>-->
								<!--</div>-->
							<!--</div>-->

							<!--&lt;!&ndash; Slide 7 &ndash;&gt;-->

							<!--<div class="owl-item product_slider_item">-->
								<!--<div class="product-item women">-->
									<!--<div class="product">-->
										<!--<div class="product_image">-->
											<!--<img src="images/product_7.png" alt="">-->
										<!--</div>-->
										<!--<div class="favorite"></div>-->
										<!--<div class="product_info">-->
											<!--<h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch FHD Monitor</a></h6>-->
											<!--<div class="product_price">$610.00</div>-->
										<!--</div>-->
									<!--</div>-->
								<!--</div>-->
							<!--</div>-->

							<!--&lt;!&ndash; Slide 8 &ndash;&gt;-->

							<!--<div class="owl-item product_slider_item">-->
								<!--<div class="product-item accessories">-->
									<!--<div class="product">-->
										<!--<div class="product_image">-->
											<!--<img src="images/product_8.png" alt="">-->
										<!--</div>-->
										<!--<div class="favorite"></div>-->
										<!--<div class="product_info">-->
											<!--<h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout Edition</a></h6>-->
											<!--<div class="product_price">$120.00</div>-->
										<!--</div>-->
									<!--</div>-->
								<!--</div>-->
							<!--</div>-->

							<!--&lt;!&ndash; Slide 9 &ndash;&gt;-->

							<!--<div class="owl-item product_slider_item">-->
								<!--<div class="product-item men">-->
									<!--<div class="product">-->
										<!--<div class="product_image">-->
											<!--<img src="images/product_9.png" alt="">-->
										<!--</div>-->
										<!--<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>-->
										<!--<div class="favorite favorite_left"></div>-->
										<!--<div class="product_info">-->
											<!--<h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal Label Printer</a></h6>-->
											<!--<div class="product_price">$410.00</div>-->
										<!--</div>-->
									<!--</div>-->
								<!--</div>-->
							<!--</div>-->

							<!--&lt;!&ndash; Slide 10 &ndash;&gt;-->

							<!--<div class="owl-item product_slider_item">-->
								<!--<div class="product-item men">-->
									<!--<div class="product">-->
										<!--<div class="product_image">-->
											<!--<img src="images/product_10.png" alt="">-->
										<!--</div>-->
										<!--<div class="favorite"></div>-->
										<!--<div class="product_info">-->
											<!--<h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold & Grey</a></h6>-->
											<!--<div class="product_price">$180.00</div>-->
										<!--</div>-->
									<!--</div>-->
								<!--</div>-->
							<!--</div>-->
						<!--</div>-->

						<!--&lt;!&ndash; Slider Navigation &ndash;&gt;-->

						<!--<div class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column">-->
							<!--<i class="fa fa-chevron-left" aria-hidden="true"></i>-->
						<!--</div>-->
						<!--<div class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column">-->
							<!--<i class="fa fa-chevron-right" aria-hidden="true"></i>-->
						<!--</div>-->
					<!--</div>-->
				<!--</div>-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->

	<!-- Benefit -->
	<!--<div class="benefit">-->
		<!--<div class="container">-->
			<!--<div class="row benefit_row">-->
				<!--<div class="col-lg-3 benefit_col">-->
					<!--<div class="benefit_item d-flex flex-row align-items-center">-->
						<!--<div class="benefit_icon"><i class="fa fa-truck" aria-hidden="true"></i></div>-->
						<!--<div class="benefit_content">-->
							<!--<h6>free shipping</h6>-->
							<!--<p>Suffered Alteration in Some Form</p>-->
						<!--</div>-->
					<!--</div>-->
				<!--</div>-->
				<!--<div class="col-lg-3 benefit_col">-->
					<!--<div class="benefit_item d-flex flex-row align-items-center">-->
						<!--<div class="benefit_icon"><i class="fa fa-money" aria-hidden="true"></i></div>-->
						<!--<div class="benefit_content">-->
							<!--<h6>cach on delivery</h6>-->
							<!--<p>The Internet Tend To Repeat</p>-->
						<!--</div>-->
					<!--</div>-->
				<!--</div>-->
				<!--<div class="col-lg-3 benefit_col">-->
					<!--<div class="benefit_item d-flex flex-row align-items-center">-->
						<!--<div class="benefit_icon"><i class="fa fa-undo" aria-hidden="true"></i></div>-->
						<!--<div class="benefit_content">-->
							<!--<h6>45 days return</h6>-->
							<!--<p>Making it Look Like Readable</p>-->
						<!--</div>-->
					<!--</div>-->
				<!--</div>-->
				<!--<div class="col-lg-3 benefit_col">-->
					<!--<div class="benefit_item d-flex flex-row align-items-center">-->
						<!--<div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>-->
						<!--<div class="benefit_content">-->
							<!--<h6>opening all week</h6>-->
							<!--<p>8AM - 09PM</p>-->
						<!--</div>-->
					<!--</div>-->
				<!--</div>-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->

	<!-- Footer -->

	<!--<footer class="footer">-->
		<!--<div class="container">-->
			<!--<div class="row">-->
				<!--<div class="col-lg-6">-->
					<!--<div class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">-->
						<!--<ul class="footer_nav">-->
							<!--<li><a href="#">Blog</a></li>-->
							<!--<li><a href="#">FAQs</a></li>-->
							<!--<li><a href="contact.html">Contact us</a></li>-->
						<!--</ul>-->
					<!--</div>-->
				<!--</div>-->
				<!--<div class="col-lg-6">-->
					<!--<div class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">-->
						<!--<ul>-->
							<!--<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>-->
							<!--<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>-->
							<!--<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>-->
							<!--<li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>-->
							<!--<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>-->
						<!--</ul>-->
					<!--</div>-->
				<!--</div>-->
			<!--</div>-->
			<!--<div class="row">-->
				<!--<div class="col-lg-12">-->
					<!--<div class="footer_nav_container">-->
						<!--<div class="cr">©2018 All Rights Reserverd. This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#">Colorlib</a></div>-->
					<!--</div>-->
				<!--</div>-->
			<!--</div>-->
		<!--</div>-->
	<!--</footer>-->

</div>

<script type="text/javascript" src='<c:url value ="/resources/js/jquery-3.2.1.min.js" />' />
<script type="text/javascript" src='<c:url value ="/resources/styles/bootstrap4/popper.js" />' />
<script type="text/javascript" src='<c:url value ="/resources/styles/bootstrap4/bootstrap.min.js" />' />
<script type="text/javascript" src='<c:url value ="/resources/plugins/Isotope/isotope.pkgd.min.js" />' />
<script type="text/javascript" src='<c:url value ="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js" />' />
<script type="text/javascript" src='<c:url value ="/resources/plugins/easing/easing.js" />' />
<script type="text/javascript" src='<c:url value ="/resources/js/custom.js" />' />
</body>

</html>
