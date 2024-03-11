 		
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- header -->
	<div class="top-header-area" id="sticker">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
                                                <div class="site-logo" style="width: 145px">
							<a href="home">
								<img src="./assets/img/flowerLogo3.png" alt="">
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li class="current-list-item"><a href="home">Home</a>
									
								</li>
								
								<li><a href="shopPage">Shop</a>
									<ul class="sub-menu">
                                                                    <c:forEach items="${listCategory}" var="category">
										<li><a href="shopPage?category_id=${category.id}">${category.name}</a></li>										
                                                                    </c:forEach>
									</ul>
								</li>
                                                                
                                                                <li><a href="about.html">About</a></li>
<!--								<li>
									<div class="header-icons">
										<a class="shopping-cart" href="login"><i class="fas fa-shopping-cart"></i></a>
										<a class="mobile-hide search-bar-icon" href="login"><i class="fas fa-user"></i></a>
									</div>
								</li>-->
                                                                <c:if test="${user==null}">
                                                                    <li class="nav-item">
                                                                        <a class="nav-link" href="login">Login</a>
                                                                    </li>
                                                                    </c:if>
                                                                    <c:if test="${user!=null}">
                                                                     <li>
                                                                         <div>
                                                                             <i>${cart.size()}</i>
                                                                            <a class="shopping-cart" href="
                                                                               <c:if test="${user==null}">login</c:if>
                                                                               <c:if test="${user!=null}">cart</c:if>"><i class="fas fa-shopping-cart"></i></a>
                                                                            <a class="mobile-hide search-bar-icon" href="./views/logout.jsp"><i class="fas fa-user"></i></a>
                                                                            <a class="" href="#" role="button">
                                                                                <p class="text-white">Wellcome ${user.getName()}</p>
                                                                            </a>
                                                                      </div>
                                                                    </li>
                                                                    </c:if>
							</ul>
						</nav>
						
						<div class="mobile-menu"></div>
						<!-- menu end -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end header -->
        
        
        
        
        
