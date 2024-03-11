/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package flowerStore.data.dao;

import flowerStore.data.model.Product;
import java.util.List;

/**
 *
 * @author TG DD
 */
public interface ProductDao {
   public List<Product> findALL();
    public boolean insert(Product category);
    public boolean update(Product category);
    public boolean delete(int id);
    public Product find(int id);
    public Product findProduct(int id_product);
}
