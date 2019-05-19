package com.spring.secbioda.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.secbiodabackend.dao.HotelDAO;
import com.spring.secbiodabackend.dto.Hotel;

@Controller
@RequestMapping("/json/data")
public class JsonDataController {

	@Autowired
	private HotelDAO hoteldao;

	@RequestMapping("/city/{id}/hotels")
	@ResponseBody
	public List<Hotel> getHotelsByCity(@PathVariable int id) {
		return hoteldao.listActiveHotelsByCity(id);
	}

}
