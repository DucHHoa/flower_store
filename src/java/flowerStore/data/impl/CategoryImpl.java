/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package flowerStore.data.impl;

import flowerStore.data.dao.CategoryDao;
import flowerStore.data.driver.MySQLDriver;
import flowerStore.data.model.Category;
import flowerStore.data.model.Product;
import java.util.List;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author TG DD
 */
public class CategoryImpl implements CategoryDao {
    Connection con = MySQLDriver.getConnetion();
    public List<Category> findALL(){
       List<Category> listCategory = new ArrayList<>();
        String sql = " select * from categories";
        
        try {
            PreparedStatement sttm = con.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                listCategory.add(new Category(id, name));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listCategory;
        
    }
    public boolean insert(Category category){
        return true;
    }
    public boolean update(Category category){
        return true;
    }
    public boolean delete(int id){
        return true;
    }
    public Product find(int id){
        return null;
    }
}
