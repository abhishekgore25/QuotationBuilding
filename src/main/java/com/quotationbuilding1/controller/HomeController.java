package com.quotationbuilding1.controller;

import java.sql.ResultSet;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.quotationbuilding1.model.Quote;
import com.quotationbuilding1.model.User;
import com.quotationbuilding1.service.MyService;
import com.quotationbuilding1.service.MyServiceImp;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

	 int companyid;
	
	@Autowired
	MyService myService;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	@GetMapping("/signup")
	public ModelAndView signup(User user) {
		
		myService.store(user);
		ModelAndView modelAndView=new ModelAndView("login.jsp");
		return modelAndView;
	}
	
	@GetMapping("/login")
	public String login(String email, String password) 
	{
		 String sql = "SELECT COUNT(*) FROM user WHERE email = ? AND password = ?";
		 int count = jdbcTemplate.queryForObject(sql, Integer.class, email, password);
		 
		 if(count>0) {
			 companyid=jdbcTemplate.queryForObject("select companyid from user where email=? and password=?", Integer.class, email, password);
			System.out.println(companyid);
			 return "home.jsp";
		 }
		 else {
			 return "login.jsp";
		 }
	}
	
	@GetMapping("/createquote")
	public ModelAndView createquote(Quote quote) 
	{
		quote.setCompanyid(companyid);
		myService.create(quote);
		ModelAndView modelAndView =new ModelAndView("showquote.jsp");
		modelAndView.addObject(quote);
		return modelAndView;
	}
	
	@GetMapping("/updatequote")
	public ModelAndView updatequote(String productname) 
	{
		System.out.println("hello");
		System.out.println(productname);
		 int id=jdbcTemplate.queryForObject("select quoteid from quote where product_name=?", Integer.class, productname);
			Optional<Quote> quote=myService.search(id);
			System.out.println(quote.get().getProductName());
			ModelAndView modelAndView =new ModelAndView("updatequote.jsp");
			modelAndView.addObject("quote",quote.get());
		return modelAndView;
	}
	
	@GetMapping("/savequote")
	public ModelAndView savequote(Quote quote) 
	{
		System.out.println(quote.getProductDescription());
		jdbcTemplate.update("Update quote set additional_charges=?,companyid=?,customer_contact=?,customer_name=?,delivery_date=?,discount=?,manufacturer=?,model=?,payment_terms=?,product_description=?,product_name=?,quantity=?,taxes=?,unit_price=?,warranty=?,year=?",quote.getAdditionalCharges(),quote.getCompanyid(),quote.getCustomerContact(),quote.getCustomerName(),quote.getDeliveryDate(),quote.getDiscount(),quote.getManufacturer(),quote.getModel(),quote.getPaymentTerms(),quote.getProductDescription(),quote.getProductName(),quote.getQuantity(),quote.getTaxes(),quote.getUnitPrice(),quote.getWarranty(),quote.getYear());
		
		ModelAndView modelAndView =new ModelAndView("showquote.jsp");
		modelAndView.addObject(quote);
	return modelAndView;
	}
	
	@GetMapping("/showall")
	public ModelAndView showall() 
	{
		List<Quote> list=myService.getList();
		ModelAndView modelAndView =new ModelAndView("showallquote.jsp");
		int i=0;
		for(Quote quote:list) {
			quote.getQuoteid();
			
			modelAndView.addObject("quote"+ ++i, quote);
		}
		modelAndView.addObject("count", i);
	
		return modelAndView;
	}
	
	@GetMapping("/showquote/{id}")
	public ModelAndView showquote(@PathVariable String id) {
	int i=Integer.parseInt(id);
	System.out.println(id);
	Optional<Quote> quote=myService.search(i);
	Quote quote2=quote.get();
		
		ModelAndView modelAndView =new ModelAndView("showquote.jsp");
		modelAndView.addObject("quote",quote2);
		System.out.println("abhi");
	return modelAndView;
	}
	
	@GetMapping("/deletequote")
	public ModelAndView deletequote(String productname) 
	{
		System.out.println("hello");
		System.out.println(productname);
		 int id=jdbcTemplate.queryForObject("select quoteid from quote where product_name=?", Integer.class, productname);
		 myService.delete(id);
		 ModelAndView modelAndView =new ModelAndView("home.jsp");
		return modelAndView;
	}
}
