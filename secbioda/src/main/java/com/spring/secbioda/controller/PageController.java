package com.spring.secbioda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.secbioda.exception.HotelNotFoundException;
import com.spring.secbiodabackend.dao.CityDAO;
import com.spring.secbiodabackend.dao.HotelDAO;
import com.spring.secbiodabackend.dao.RoomDAO;
import com.spring.secbiodabackend.dto.City;
import com.spring.secbiodabackend.dto.Hotel;

@Controller
public class PageController {
	
	private static final Logger logger = LoggerFactory.getLogger(PageController.class);
	
	@Autowired
	private CityDAO cityDAO;
	
	@Autowired
	private HotelDAO hotelDAO;
	
	@Autowired
	private RoomDAO roomDAO;
	
	//HOME
	@RequestMapping(value= {"/","/home","/index"})
	public ModelAndView index() {
		
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title","Home");
		
		logger.info("Inside PageController index method-INFO");
		logger.info("Inside PageController index method-DEBUG");
		
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
	
	//SHOW SINGLE HOTEL
	@RequestMapping(value="/show/{id}/hotel")
	public ModelAndView showSingleHotel (@PathVariable int id) throws HotelNotFoundException{
		ModelAndView mv = new ModelAndView ("page");
		Hotel hotel = hotelDAO.get(id);
		
		if(hotel==null) throw new HotelNotFoundException();
		City city =null;
		city=cityDAO.get(id);
		
		//update the view count
		hotel.setViews(hotel.getViews()+1);
		hotelDAO.update(hotel);
		
		mv.addObject("title",hotel.getName());
		
		mv.addObject ("hotel",hotel);
		mv.addObject("city",city);
		mv.addObject("rooms",roomDAO.listActiveRoomsByHotel(id));
		
		mv.addObject("userClickShowHotel",true);
		
		
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
