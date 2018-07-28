package org.rasindia.dao;
import java.util.List;

import org.rasindia.model.Product;

public interface ProductDao {

	public List<Product> ListAllProduct();
	
	public void saveOrUpdate(Product product);
	
	public void deletepProduct(int id);
	
	public Product findProductById(int id);
}
