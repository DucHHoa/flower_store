<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!-- product section -->
	<div class="product-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="section-title">	
						<h3>Products <span class="orange-text">Hot</span> </h3>
						<p>Where Petals Do the Talking, and the Walking.</p>
					</div>
				</div>
			</div>
       
			<div class="row">
                            <c:forEach items="${listProduct}" var="product">
                              <c:if test="${product.product_hot == 1}">                                                             
				<div class="col-lg-4 col-md-6 text-center">
					<div class="single-product-item">
						<div class="product-image">
							<a href="detail?id=${product.id}"><img src="./assets/images/${product.image}" alt=""></a>
						</div>
						<h3>${product.title}</h3>
						<p class="product-price">
                                                    <span>${product.name}</span>
                                                    <fmt:formatNumber type = "number" maxFractionDigits = "3" value="${product.price}"/>đ</p>
                                                
						<a href="
                                                    <c:if test="${user==null}">login</c:if>
                                                    <c:if test="${user!=null}">home?id_product=${product.id}</c:if>" 
                                                    class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
					</div>
				</div>	
                                </c:if>
                            </c:forEach>
			</div>
                       
		</div>
	</div>
	<!-- end product section -->

		
	<!-- advertisement section -->
	<div class="abt-section mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<div class="abt-bg">
						<a href="https://www.youtube.com/watch?v=DBLlFWYcIGQ" class="video-play-btn popup-youtube"><i class="fas fa-play"></i></a>
					</div>
				</div>
				<div class="col-lg-6 col-md-12">
					<div class="abt-text">
						<p class="top-sub">Since Year 1999</p>
						<h2>We are <span class="orange-text">Flower planet</span></h2>
						<p>Etiam vulputate ut augue vel sodales. In sollicitudin neque et massa porttitor vestibulum ac vel nisi. Vestibulum placerat eget dolor sit amet posuere. In ut dolor aliquet, aliquet sapien sed, interdum velit. Nam eu molestie lorem.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente facilis illo repellat veritatis minus, et labore minima mollitia qui ducimus.</p>
						<a href="about.html" class="boxed-btn mt-4">know more</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end advertisement section -->
	
	<!-- shop banner -->
	<section class="shop-banner">
            <div class="container" style="text-align: end">
        	<h3>December sale is on! <br> with big <span class="orange-text">Discount...</span></h3>
            <div class="sale-percent"><span>Sale! <br> Upto</span>50% <span>off</span></div>
            <a href="shop.html" class="cart-btn btn-lg">Shop Now</a>
        </div>
    </section>
	<!-- end shop banner -->

	<!-- latest news -->
	<div class="latest-news pt-150 pb-150">
		<div class="container">

			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="single-latest-news">
						<a href="#"><div class="latest-news-bg news-bg-1"></div></a>						
					</div>
                                    <div class="banner-content">
                                        <h4 style="color: white">Title</h4>
                                    <a href="#" style="color: white">SHOP NOW</a>
                                    </div>
				</div>
                            
				<div class="col-lg-6 col-md-6">
					<div class="single-latest-news">
						<a href="#"><div class="latest-news-bg news-bg-2"></div></a>					
					</div>
                                        <div class="banner-content">
                                            <h4 style="color: white">Title</h4>
                                            <a href="#" style="color: white">SHOP NOW</a>
                                        </div>
				</div>
			
			</div>

		</div>
	</div>
	<!-- end latest news -->
