/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package flowerStore.data.web;

import flowerStore.data.dao.Database;
import flowerStore.data.model.Category;
import flowerStore.data.model.Product;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author TG DD
 */
@WebServlet(name = "DetailServlet", urlPatterns = {"/detail"})
public class DetailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        int productId = Integer.parseInt(request.getParameter("id"));
        Product product = Database.getProductDao().findProduct(productId);
        request.setAttribute("product", product);
        
        List<Category> listCategory = Database.getCategoryDao().findALL();
        request.setAttribute("listCategory", listCategory);
               
        addProductToCart(request);
        
        
       request.setAttribute("title", "Flower Store ");
       request.getRequestDispatcher("./views/detail.jsp").include(request, response); 
    }

    void addProductToCart (HttpServletRequest request){
        int id_product;
        try {
            id_product = Integer.parseInt(request.getParameter("id_product"));
        } catch (Exception e) {
            id_product = 0;
        }
        List<Product> cart = (List<Product>)request.getSession().getAttribute("cart");
        if(cart==null) cart = new ArrayList<>();
        if(id_product>0){
            Product product = Database.getProductDao().findProduct(id_product);
            boolean isProductInCart=false;
            for(Product pro: cart)
                if(pro.getId()==id_product){
                    pro.setQuantity(pro.getQuantity()+1);
                   isProductInCart = true;
                }
            if(isProductInCart==false)cart.add(product);
            
        request.getSession().setAttribute("cart", cart);               
                             
        } 
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
