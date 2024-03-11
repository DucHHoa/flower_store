/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package flowerStore.data.web;

import flowerStore.data.dao.Database;
import flowerStore.data.model.User;
import flowerStore.utils.API;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author TG DD
 */
public class LoginServlet extends HttpServlet {




    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("title", "LoginPage");
        request.getRequestDispatcher("./views/login.jsp").include(request, response);
       
    }    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {    
    String emailphone = request.getParameter("emailphone");
    String password = request.getParameter("password");
    
    User user = Database.getUserDao().findUser(emailphone, password);

        if (user == null) {
            request.getSession().setAttribute("error_login", "Sai tài khoản hoặc mật khẩu");
            response.sendRedirect("login");
        } else {
            if(user.getRole().equals("admin")){
                response.sendRedirect("admin");
            }else{
                request.getSession().setAttribute("user", user);
                request.getSession().removeAttribute("error_login");
                response.sendRedirect("home");
            }
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
