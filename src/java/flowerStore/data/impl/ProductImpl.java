/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package flowerStore.data.impl;

import flowerStore.data.dao.ProductDao;
import flowerStore.data.driver.MySQLDriver;
import flowerStore.data.model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author TG DD
 */
public class ProductImpl implements ProductDao {
    Connection con = MySQLDriver.getConnetion();   
    
    public List<Product> findALL(){
        List<Product> listProduct = new ArrayList<>();
        String sql = "select *from products";
        try {
            PreparedStatement sttm = con.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                int id_category = rs.getInt("id_category");
                String name = rs.getString("name");
                String title = rs.getString("title");
                String description = rs.getString("description"); 
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int active = rs.getInt("active");
                int product_hot = rs.getInt("product_hot");
                
                listProduct.add(new Product(id, id_category, name, title, description, image, quantity, price, active, product_hot));
                }
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listProduct;
    }
    
    @Override
    public Product findProduct(int id_product) {
    String sql = "SELECT * FROM products WHERE id=?";
    try (PreparedStatement sttm = con.prepareStatement(sql)) {
        sttm.setInt(1, id_product);
        try (ResultSet rs = sttm.executeQuery()) {
            if (rs.next()) {
                return new Product(rs);
            }
        }
    } catch (SQLException ex) {
        Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
    }
    return null;
}
    
    @Override
    public boolean insert(Product category) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean update(Product category) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Product find(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
