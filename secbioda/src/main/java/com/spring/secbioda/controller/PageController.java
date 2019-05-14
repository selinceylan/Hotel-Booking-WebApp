package com.spring.secbioda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.secbiodabackend.dao.CityDAO;
import com.spring.secbiodabackend.dto.City;

@Controller
public class PageController {
	
	@Autowired
	private CityDAO cityDAO;
	
	//HOME
	@RequestMapping(value= {"/","/home","/index"})
	public ModelAndView index() {
		
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title","Home2");
		
		//passing the list of cities
		mv.addObject("cities",cityDAO.list());
		mv.addObject("userClickHome",true);
		return mv;
		
	}
	
	//LIST HOTELS FROM CITY
		@RequestMapping(value= {"/show/city/{id}/hotels"})
		public ModelAndView showCityHotels(@PathVariable("id") int id) {
			
			ModelAndView mv= new ModelAndView("page");
			
			//cityDAO to fetch a single city
			City city =null;
			
			city=cityDAO.get(id);
			mv.addObject("title",city.getName());
			
			//passing the list of cities
			mv.addObject("cities",cityDAO.list());
			
			//passing the single category object
			mv.addObject("city",city);
			
			mv.addObject("userClickCityHotels",true);
			
			
			return mv;
			
		}
	
	
	
	//LIST YOUR PROPERTY
	@RequestMapping(value= {"/listyourproperty"})
	public ModelAndView listyourproperty() {
		
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title","List Your Property");
		mv.addObject("userClickListyourproperty",true);
		return mv;
		
	}
	
	//REGISTER
	@RequestMapping(value= {"/register"})
	public ModelAndView register() {
		
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title","Register");
		mv.addObject("userClickRegister",true);
		return mv;
		
	}
	
	//SIGN IN
	@RequestMapping(value= {"/signin"})
	public ModelAndView signin() {
		
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title","Sign In");
		mv.addObject("userClickSignin",true);
		return mv;
		
	}

}
