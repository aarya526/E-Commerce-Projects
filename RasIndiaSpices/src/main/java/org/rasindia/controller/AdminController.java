package org.rasindia.controller;

import java.util.List;

import org.rasindia.dao.ProductDao;
import org.rasindia.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	
	@RequestMapping(value = "/admin/home")
	public ModelAndView adminHome() {
		ModelAndView model = new ModelAndView("Admin Portal/HomePage");
		return model;
	}
}
@Controller
class ProductController{

	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value = "/product/list",method = RequestMethod.GET)
	public ModelAndView productLis() {
		
		ModelAndView model = new ModelAndView("Admin Portal/productList");
	    List<Product> product = productDao.ListAllProduct();
		model.addObject("list",product);
		return model;
	}
	
	@RequestMapping(value = "/product/add",method = RequestMethod.GET)
	public ModelAndView addProduct() {
		ModelAndView model = new ModelAndView("Admin Portal/productAdd");
		Product product = new Product();
		model.addObject("productForm",product);
		return model;
		
	}
	
	@RequestMapping(value = "/product/save",method = RequestMethod.POST)
	public ModelAndView svaeProduct(@ModelAttribute("productForm") Product product) {
	
		productDao.saveOrUpdate(product);
		return new ModelAndView("redirect:/product/list");
	}
	
	@RequestMapping(value = "/product/delete/{id}",method = RequestMethod.GET)
	public ModelAndView deleteProduct(@PathVariable("id") int id) {
		productDao.deletepProduct(id);
		return new ModelAndView("redirect:/product/list");
		
	}
	@RequestMapping(value = "/product/update/{id}",method = RequestMethod.GET)
	public ModelAndView updateProduct(@PathVariable("id") int id) {
		ModelAndView model = new ModelAndView("Admin Portal/productAdd");
		Product product = productDao.findProductById(id);
		model.addObject("productForm",product);
		return model;
		
	}
}
