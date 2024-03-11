/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package flowerStore.data.dao;

import flowerStore.data.impl.CategoryImpl;
import flowerStore.data.impl.ProductImpl;
import flowerStore.data.impl.UserImpl;

/**
 *
 * @author TG DD
 */
public class Database {
    public static CategoryDao getCategoryDao(){
        return new CategoryImpl();
}
    public static ProductDao getProductDao(){
        return new ProductImpl();
    }
    public static UserDao getUserDao(){
        return new UserImpl();
    }
}
