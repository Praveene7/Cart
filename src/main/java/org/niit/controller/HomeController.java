package org.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.niit.dao.CategoryDAO;
import org.niit.dao.ProductDAO;
import org.niit.dao.UserdetailsDAO;
import org.niit.model.Category;
import org.niit.model.Product;
import org.niit.model.Userdetails;

@Controller
public class HomeController {

	@Autowired
	Userdetails userdetails;
	@Autowired(required=true)
	UserdetailsDAO userdetailsDAO;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/")
	public ModelAndView onLoad(HttpSession session,Model model)
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("product", new Product());
		model.addAttribute("productList",this.productDAO.list());
	ModelAndView mv = new ModelAndView("home");

	return mv;
	}
	@RequestMapping("/Register")
public ModelAndView registerhere()
{
	ModelAndView mv = new ModelAndView("Register");
	mv.addObject("userDetails", userdetails);
	mv.addObject("isUserClickedRegisterHere", "true");
	return mv;
}

@RequestMapping("/LoginHere")
public ModelAndView loginHere()
{
	ModelAndView mv = new ModelAndView("Login");
	mv.addObject("userDetails", userdetails);
	mv.addObject("isUserClickedLoginHere", "true");
	return mv;
}
	
@RequestMapping("/Admin")
public ModelAndView Admin()
{
	ModelAndView mv = new ModelAndView("AdminLogin");
	mv.addObject("userDetails", userdetails);
	mv.addObject("isUserClickedLoginHere", "true");
	return mv;
}
	
@RequestMapping(value="RegisterSuccess",method = RequestMethod.POST)
public ModelAndView registerUser(@ModelAttribute Userdetails userdetails)
{
	ModelAndView mv;
	mv= new ModelAndView("Login");
	String msg;
	int j,k;
	
	 List<Userdetails> usersDetailList=userdetailsDAO.list();

	    for (int i=0; i< usersDetailList.size(); i++) {
	        if(userdetails.getEmail().equals(usersDetailList.get(i).getEmail())) {
	        	mv.addObject("msg","Email already exists");
	            mv= new ModelAndView("Register");
	            j=1;
	        }

	        if(userdetails.getUsername().equals(usersDetailList.get(i).getUsername())) {
	            mv.addObject("msg","Username already exists");
	            mv= new ModelAndView("Register");
	            k=2;
	            }	        
	    } 

		mv.addObject("msg","You have registered successfully, please log in to continue");
	    userdetailsDAO.save(userdetails);
	    return mv;
	    
	/*if(userdetailsDAO.get(userdetails.getUserid())==null)
	{
		userdetailsDAO.save(userdetails);
		mv.addObject("msg","you are successfully register");
	}
	else
	{
		mv.addObject("msg", "user exist with this id");
	}
	
	mv.addObject("isUserClickedSubmit", "true");
	return mv;*/
}

}
