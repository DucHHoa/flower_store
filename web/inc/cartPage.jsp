<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
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
                            <p>Fresh and Organic</p>
                            <h1>Cart</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- end breadcrumb section -->

	<!-- cart -->
	<div class="cart-section mt-150 mb-150">
            <div class="container">
                
                    <div class="row">
                         <div class="col-lg-7">
                           
                              <a href="?clear=true" class="text-body">
                                  <i>Empty Cart</i>
                              </a>        
                             <hr>               
                            <div class="d-flex justify-content-between align-items-center mb-4">
                              <div>
                                <p class="mb-1">Shopping cart</p>
                                <p class="mb-0">You have ${cart.size()} items in your cart</p>
                              </div>
                              <div>
                                <p class="mb-0"><span class="text-muted">Sort by:</span> <a href="#!"
                                    class="text-body">price <i class="fas fa-angle-down mt-1"></i></a></p>
                              </div>
                            </div>               
                    <c:forEach var="product" items="${cart}">
                      <div class="card mb-3">
                        <div class="card-body">
                          <div class="d-flex justify-content-between">
                            <div class="d-flex flex-row align-items-center">
                              <div>
                                <img
                                  src="./assets/images/${product.image}"
                                  class="img-fluid rounded-3" alt="Shopping item" style="width: 65px;">
                              </div>
                              <div class="ms-3 ml-3">
                                <h5>${product.title}</h5>
                       <form action="cart" method="post">
                                <h5 style="padding-left:20px" class="small mb-0">
                                    <input type="hidden" name="id_product"value="${product.id}">
                                    <input type="number" name="quantity" value="${product.quantity}" style="width: 50px">                      
                                  </h5>
                              </div>
                            </div>       
                            <div class="d-flex flex-row align-items-center">
                              <div style="width: 110px">
                                <h5 class="mb-0"><fmt:formatNumber type = "number" maxFractionDigits = "3" value="${product.price}"/>đ</h5>
                              </div>
                              
                              <div style="width: 25%">
                                  <button type="submit" name="action" value="update">
                                    <img src="./assets/icon/reset2.jpg" style="width: 20px; height: 20px"/>
                                  </button>
                              </div>
                              <div style="width: 25%">
                                  <button type="submit" name="action" value="delete">
                                     <img src="./assets/icon/delete.jpg" style="width: 20px; height: 20px"/>
                                </button>
                              </div> 
                            </div>
                        </form>
                          </div>
                        </div>
                      </div>
                     </c:forEach>
  
              </div>
                        
                        <c:set var="subtotal" value="0.0"/>
                        <c:forEach var="product" items="${cart}">
                            <c:set var="subtotal" value="${subtotal + product.price * product.quantity}"/>
                        </c:forEach>

                        <c:set var="shippingCost" value="20000" />
                        <c:set var="total" value="${subtotal + shippingCost}"/>
                        <div class="col-lg-4">
                            <div class="total-section">
                                <table class="total-table">
                                    <thead class="total-table-head">
                                        <tr class="table-total-row">
                                            <th>Total</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="total-data">
                                                <td><strong>Subtotal: </strong></td>
                                                <td> <fmt:formatNumber type = "number" maxFractionDigits = "3" value="${subtotal}"/>đ</td>
                                        </tr>
                                        <tr class="total-data">
                                                <td><strong>Shipping: </strong></td>
                                                <td> <fmt:formatNumber type = "number" maxFractionDigits = "3" value="${shippingCost}"/>đ</td>
                                        </tr>
                                        <tr class="total-data">
                                                <td><strong>Total: </strong></td>
                                                <td> <fmt:formatNumber type = "number" maxFractionDigits = "3" value="${total}"/>đ</td>
                                        </tr>
                                    </tbody>
                                </table>
                                    <div class="cart-buttons">
                                        <form action="cart" method="post">
                                            <div>
                                                
                                                 <a href="checkout.html" class="boxed-btn black">Check Out</a>
                                             </div>
                                        </form>
                                    </div>
                                    </div>
                                   
                        </div>
                    </div>
		</div>
	</div>
	<!-- end cart -->

