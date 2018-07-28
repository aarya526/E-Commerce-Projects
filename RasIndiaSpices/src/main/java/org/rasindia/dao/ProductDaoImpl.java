package org.rasindia.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.rasindia.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> ListAllProduct() {
		
		return getSession().createQuery("from Product").list();
	}

	
	public void saveOrUpdate(Product product) {
		

		getSession().saveOrUpdate(product);
		
	}

	
	public void deletepProduct(int id) {
		
		getSession().createQuery("delete from Product as a where a.id =  :id").setInteger("id", id).executeUpdate();
	}

	
	public Product findProductById(int id) {
		Product product = (Product) getSession().get(Product.class, id);
		return product;
	}

	
	
}
