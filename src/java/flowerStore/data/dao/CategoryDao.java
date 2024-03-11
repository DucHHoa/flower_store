/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package flowerStore.data.dao;

import java.util.List;
import flowerStore.data.model.Category;
import flowerStore.data.model.Product;
        

/**
 *
 * @author TG DD
 */
public interface CategoryDao {
    public List<Category> findALL();
    public boolean insert(Category category);
    public boolean update(Category category);
    public boolean delete(int id);
    public Product find(int id);
    
}
