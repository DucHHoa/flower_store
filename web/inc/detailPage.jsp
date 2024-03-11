<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	

<!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->
	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
		<div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            
                            <h1>Chi tiết sản phẩm</h1>
                        </div>
                    </div>
                </div>
            </div>
	</div>
	<!-- end breadcrumb section -->

	<!-- single product -->
	<div class="single-product mt-150 mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="single-product-img" >
                            <img style="width: 300px" src="./assets/images/${product.image}" alt="">
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="single-product-content">
                            <h3>${product.title}</h3>
                            <p class="single-product-pricing">
                                <span>${product.name}</span>
                            <fmt:formatNumber type = "number" maxFractionDigits = "3" value="${product.price}"/>đ</p>
                            <p>${product.description}</p>
                            <div class="single-product-form">
                                
                                <a href="
                                   <c:if test="${user==null}">login</c:if>
                                   <c:if test="${user!=null}">home?id_product=${product.id}</c:if>"
                                   class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                                
                            </div>
                            <h4>Share:</h4>
                            <ul class="product-share">
                                <li><a href=""><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href=""><i class="fab fa-twitter"></i></a></li>
                                <li><a href=""><i class="fab fa-google-plus-g"></i></a></li>
                                <li><a href=""><i class="fab fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
	</div>
	<!-- end single product -->

<!--	 more products 
	<div class="more-products mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="section-title">	
                            <h3><span class="orange-text">Related</span> Products</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, fuga quas itaque eveniet beatae optio.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="single-product-item">
                            <div class="product-image">
                                    <a href="single-product.html"><img src="assets/img/products/product-img-1.jpg" alt=""></a>
                            </div>
                            <h3>Strawberry</h3>
                            <p class="product-price"><span>Per Kg</span> 85$ </p>
                            <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                        </div>
                    </div>
	
                </div>
		</div>
	</div>
	 end more products -->
