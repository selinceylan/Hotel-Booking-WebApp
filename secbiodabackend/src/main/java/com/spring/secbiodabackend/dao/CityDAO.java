package com.spring.secbiodabackend.dao;

import java.util.List;

import com.spring.secbiodabackend.dto.City;

public interface CityDAO {

	List<City> list();
	City get(int id);

}
