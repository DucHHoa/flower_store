/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package flowerStore.data.model;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author TG DD
 */
public class Product {
    private int id;
    private int id_category;
    private String name;
    private String title;
    private String description;
    private String image;
    private int quantity;
    private double price;
    private int active;
    private int product_hot;

    public Product(int id, int id_category, String name, String title, String description, String image, int quantity, double price, int active, int product_hot) {
        this.id = id;
        this.id_category = id_category;
        this.name = name;
        this.title = title;
        this.description = description;
        this.image = image;
        this.quantity = quantity;
        this.price = price;
        this.active = active;
        this.product_hot = product_hot;
    }
    
    //add to cart
    public Product(ResultSet rs) throws SQLException{
        this.id = rs.getInt("id");
        this.name = rs.getString("name");
        this.title = rs.getString("title");
        this.image = rs.getString("image");
        this.price = rs.getDouble("price");
        this.quantity = 1;
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_category() {
        return id_category;
    }

    public void setId_category(int id_category) {
        this.id_category = id_category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public int getProduct_hot() {
        return product_hot;
    }

    public void setProduct_hot(int product_hot) {
        this.product_hot = product_hot;
    }

   
}
