<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Product List</title>
    <style>
        body {
            padding: 20px;
        }

        .edit-btn,
        .new-btn {
            cursor: pointer;
            text-decoration: underline;
            color: blue;
            border: none;
            background: none;
            padding: 0;
        }

        .edit-btn:focus,
        .new-btn:focus {
            outline: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="d-flexx" style="margin-top:30px">    
            <h2 style="float:left">Product List</h2>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th>Product</th>
                    <th></th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Discount Price</th>
                    <th>Quantity</th>
                    <th>Content</th>
                    <th>Title</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                
                <tr>
                    <form action="" method="$_GET">
                        <td><img src="../uploads/<?php echo $row_selc_product['product_image'] ?>" alt="Product 1 Image" style="max-width: 50px;"></td>
                        <td>Product name</td>
                        <td>Category name</td>
                        <td>price</td>
                       
                        <td>quantity</td>
                        
                        <td>title</td>
                        <td>
                            <a href="?delete=<?php echo $row_selc_product['product_id'] ?>">Xóa </a>||
                            <a href="ProductControll.php?update=<?php echo $row_selc_product['product_id'] ?>">Cập nhập</a>  
                            <!-- <button class=" btn btn-primary" data-toggle="modal" data-target="#editProductModal">Edit</button> -->
                        </td>
                    </form>
                </tr>
                
            </tbody>
        </table>
         <!-- Hiển thị nút phân trang -->
        <ul class="pagination">
        
        </ul>               
    </div>

    <!-- Modal for Edit Product -->
            <div class="modall" id="newProductModal">
                <div class="modal-dialogg" style="width:800px;margin:1.7rem auto">
                    <div class="modal-content">
                    <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Cập nhập sản phẩm</h4>
                            <button type="button" class="close" data-dismiss="modal"></button>
                        </div>

                        <!-- Modal Body -->
                        <div class="modal-body">
                            <form action="" method="POST" enctype="multipart/form-data">
                                <div class="p-4">
                                    <div class="row">
                                        <div class=" col-4 mb-3 ">
                                            <label for="productImage">Product Image:</label>
                                            <input type="file" class="form-control" name="hinhanh" id="productImage">
                                            <img src="../uploads/<?php echo $row_update['product_image']?>" width="50px">
                                        </div>
                                        <div class=" col-4 mb-3">
                                            <label for="productName">Product Name:</label>
                                            <input type="text" class="form-control" name="addName" id="productName" value="<?php echo $row_update['product_name']?>" required>
                                            <input type="hidden" class="form-control" name="id_update" id="productid" value="<?php echo $row_update['product_id']?>">
                                        </div>
                                        <div class=" col-4 mb-3">
                                            <label for="productCategory">Category:</label><br>
                                            <select name="addCategory" class="form-control">
                                            <option value="0">Chọn danh mục</option>
                                          
                                                <option selected value="<?php echo $row_selc_category['category_id']?>"><?php echo $row_selc_category['category_name']?></option> 
                                               
                                                <option value="<?php echo $row_selc_category['category_id']?>"><?php echo $row_selc_category['category_name']?></option>     
                                                
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-4 mb-3">
                                            <label for="productPrice">Price:</label>
                                            <input type="text" class="form-control" name="addPrice" id="productPrice" value="<?php echo $row_update['product_price']?>" required>
                                        </div>
                                        <div class="col-4 mb-3">
                                            <label for="discountedPrice">Discounted Price:</label>
                                            <input type="text" class="form-control" name="addDiscount" id="discountedPrice" value="<?php echo $row_update['product_discount']?>" required>
                                        </div>
                                        <div class="col-4 mb-3">
                                            <label for="productQuantity">Quantity:</label>
                                            <input type="text" class="form-control" name="addQuantity" id="productQuantity" value="<?php echo $row_update['product_quantity']?>" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="productContent">Content:</label>
                                        <textarea class="form-control" name="addContent" id="productContent" rows="3" ><?php echo $row_update['product_content']?></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="productTitle">Title:</label>
                                        <textarea class="form-control" name="addTitle" id="productContent" rows="3"><?php echo $row_update['product_title']?></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-primary" name="UpdateProduct">Save</button>
                                    <h6 class="mb-0" style="padding-top:5px"><a href="ProductControll.php" class="text-body" ><i
                                                        class="fas fa-long-arrow-alt-left me-2"></i>Trở lại</a></h6>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
      
            <!-- Modal for New Product -->
        <div class="modall" id="newProductModal">
            <div class="modal-dialogg" style="width:800px;margin:1.7rem auto">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Thêm sản phẩm</h4>
                        <button type="button" class="close" data-dismiss="modal"></button>
                    </div>

                    <!-- Modal Body -->
                    <div class="modal-body">
                        <form action="" method="POST" enctype="multipart/form-data">
                            <div class="p-4">
                                <div class="row">
                                    <div class=" col-4 mb-3 ">
                                        <label for="productImage">Product Image:</label>
                                        <input type="file" class="form-control" name="hinhanh" id="productImage" required>
                                    </div>
                                    <div class=" col-4 mb-3">
                                        <label for="productName">Product Name:</label>
                                        <input type="text" class="form-control" name="addName" id="productName" required>
                                    </div>
                                    <div class=" col-4 mb-3">
                                        <label for="productCategory">Category:</label><br>
                                        <select name="addCategory" class="form-control">
                                            <option value="">----Chọn danh mục----</option>
                                        
                                            <option value="<?php echo $row_selc_category['category_id']?>"><?php echo $row_selc_category['category_name']?></option>
                                           
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-4 mb-3">
                                        <label for="productPrice">Price:</label>
                                        <input type="text" class="form-control" name="addPrice" id="productPrice" required>
                                    </div>
                                    <div class="col-4 mb-3">
                                        <label for="discountedPrice">Discounted Price:</label>
                                        <input type="text" class="form-control" name="addDiscount" id="discountedPrice" required>
                                    </div>
                                    <div class="col-4 mb-3">
                                        <label for="productQuantity">Quantity:</label>
                                        <input type="text" class="form-control" name="addQuantity" id="productQuantity" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="productContent">Content:</label>
                                    <textarea class="form-control" name="addContent" id="productContent" rows="3" ></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="productTitle">Title:</label>
                                    <textarea class="form-control" name="addTitle" id="productContent" rows="3"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary" name="AddProduct">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <?php    
        }
    ?>

    

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>