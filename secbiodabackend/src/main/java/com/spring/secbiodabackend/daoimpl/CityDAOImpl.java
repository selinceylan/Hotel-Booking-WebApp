package com.spring.secbiodabackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.secbiodabackend.dao.CityDAO;
import com.spring.secbiodabackend.dto.City;

@Repository("cityDAO")
public class CityDAOImpl implements CityDAO {

	private static List<City> cities = new ArrayList<>();

	static {
		City city = new City();
		// adding first city
		city.setId(1);
		city.setName("Madrid");
		city.setDescription("This is some description for Madrid");
		city.setImageURL(
				"https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Spain/Madrid/gran-via-madrid-night-lead-guide.jpg?imwidth=450");

		cities.add(city);

		// second city
		city = new City();
		city.setId(2);
		city.setName("Oporto");
		city.setDescription("This is some description for Oporto");
		city.setImageURL("http://finedininglovers.cdn.crosscast-system.com/BlogPost/xl_16074_Porto-Portugal-TP.jpg");

		cities.add(city);

		// third city
		city = new City();
		city.setId(2);
		city.setName("Ankara");
		city.setDescription("This is some description for Ankara");
		city.setImageURL("http://web2.bilkent.edu.tr/bilkentpost/wp-content/uploads/sites/37/2017/08/post8.jpg");

		cities.add(city);
	}

	@Override
	public List<City> list() {
		// TODO Auto-generated method stub
		return cities;
	}

	@Override
	public City get(int id) {

		// enchanced for loop
		for (City city : cities) {
			if (city.getId() == id)
				return city;
		}

		return null;

	}

}
