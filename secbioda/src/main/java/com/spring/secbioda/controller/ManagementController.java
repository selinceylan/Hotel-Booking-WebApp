package com.spring.secbioda.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.secbiodabackend.dao.CityDAO;
import com.spring.secbiodabackend.dao.HotelDAO;
import com.spring.secbiodabackend.dto.City;
import com.spring.secbiodabackend.dto.Hotel;

@Controller
@RequestMapping("/manage")
public class ManagementController {
	
	@Autowired
	private CityDAO cityDAO;
	
	@Autowired
	private HotelDAO hotelDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(ManagementController.class);
	
	@RequestMapping(value="/hotels", method=RequestMethod.GET)
	public ModelAndView showManageHotels(@RequestParam(name="operation",required=false)String operation) {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickManageHotels",true);
		mv.addObject("title","Manage Hotels");
		
		//Add new hotel
		Hotel nHotel = new Hotel();
		nHotel.setOwnerId(1);
		nHotel.setActive(true);
		mv.addObject("hotel",nHotel);
		
		if (operation !=null) {
			
			if(operation.equals ("hotel")){
				
				mv.addObject("message","Product Submitted Successfuly!");
				
			}
		}
		return mv;
	}
	
	//handling hotel submission 
	@RequestMapping(value="/hotels",method=RequestMethod.POST)
	public String handleHotelSubmission(@ModelAttribute("hotel")Hotel mHotel) {
		
		logger.info (mHotel.toString());
		
		//create a new hotel record
		hotelDAO.add(mHotel);
		return "redirect:/manage/hotels?operation=hotel";
		
	}

	//returning cities for all the request mapping
	@ModelAttribute("cities")
	public List<City>getCities(){
		
		return cityDAO.list();
		
	}
}
