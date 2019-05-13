package com.spring.secbioda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	//HOME
	@RequestMapping(value= {"/","/home","/index"})
	public ModelAndView index() {
		
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title","Home");
		mv.addObject("userClickHome",true);
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
