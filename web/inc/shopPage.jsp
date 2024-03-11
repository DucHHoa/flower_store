<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
		<div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            
                            <h1>Danh mục sản phẩm</h1>
                        </div>
                    </div>
                </div>
            </div>
	</div>
	<!-- end breadcrumb section -->
<!-- products -->
	<div class="product-section mt-150 mb-150">
		<div class="container">

			<div class="row">
                <div class="col-md-12">
                    <div class="product-filters">
                        <ul>
                            <a href="shopPage"><li class="active" data-filter="*">All</li></a>
                            <c:forEach items="${listCategory}" var="category">
                            <a href="?category_id=${category.id}"><li data-filter="">${category.name}</li></a>
                         
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
                    
                 <div class="row product-lists">
                    <c:if test="${id_category == null}">
                        <c:forEach items="${listProduct}" var="product">
                            <div class="col-lg-4 col-md-6 text-center">
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="detail?id=${product.id}"><img src="./assets/images/${product.image}" alt="" style="width: 110px"></a>
                                    </div>
                                    <h3>${product.title}</h3>
                                    <p class="product-price"><span>${product.name}</span> 
                                   
                                        <fmt:formatNumber type = "number" maxFractionDigits = "3" value="${product.price}"/>đ</p>
                                    <a href="<c:if test="${user==null}">login</c:if>
                                             <c:if test="${user!=null}">shopPage?id_product=${product.id}</c:if>" 
                                             class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>

                    <c:if test="${id_category != null}">
                        <c:forEach items="${listProduct}" var="product">
                            <c:if test="${product.id_category == id_category}">
                                <div class="col-lg-4 col-md-6 text-center ">
                                  <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="single-product.html"><img src="./assets/images/${product.image}" alt="" style="width: 110px"></a>
                                        </div>
                                        <h3>${product.title}</h3>
                                        <p class="product-price"><span>${product.name}</span> ${product.price} </p>
                                        <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </div>

			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="pagination-wrap">
						<ul>
							<li><a href="#">Prev</a></li>
							<li><a href="#">1</a></li>
							<li><a class="active" href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">Next</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end products -->
