package org.rasindia.controller;

import java.util.List;

import org.rasindia.dao.ProductDao;
import org.rasindia.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InventoryController {

	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value = "/productlist",method = RequestMethod.GET)
	public ModelAndView productLis() {
		
		ModelAndView model = new ModelAndView("product/productlist");
	    List<Product> product = productDao.ListAllProduct();
		model.addObject("list",product);
		return model;
	}
}
