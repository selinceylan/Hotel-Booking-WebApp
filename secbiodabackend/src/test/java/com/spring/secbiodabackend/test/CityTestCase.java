package com.spring.secbiodabackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.spring.secbiodabackend.dao.CityDAO;
import com.spring.secbiodabackend.dto.City;

public class CityTestCase {

	private static AnnotationConfigApplicationContext context;

	private static CityDAO cityDAO;

	private City city;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.spring.secbiodabackend");
		context.refresh();
		cityDAO = (CityDAO) context.getBean("cityDAO");
	}

	/*
	 * @Test public void testAddCity() { city = new City(); city.setName("Madrid");
	 * city.setDescription("This is some description for Madrid"); city.setImageURL(
	 * "https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Spain/Madrid/gran-via-madrid-night-lead-guide.jpg?imwidth=450"
	 * ); assertEquals("Successfully added a city inside the table", true,
	 * cityDAO.add(city)); }
	 */

	/*
	 * @Test public void testGetCity() { city = cityDAO.get(1);
	 * assertEquals("Successfully fetched a city from the table", "Madrid",
	 * city.getName());
	 * 
	 * }
	 */

	/*
	 * @Test public void testUpdateCity() { city = cityDAO.get(1);
	 * city.setName("Madrit");
	 * assertEquals("Successfully update a city in the table", true,
	 * cityDAO.update(city));
	 * 
	 * }
	 */

	/*
	 * @Test public void testDeleteCity() { city = cityDAO.get(1);
	 * 
	 * assertEquals("Successfully delete a city in the table", true,
	 * cityDAO.delete(city));
	 * 
	 * }
	 */

	/*
	 * @Test public void testListCity() {
	 * 
	 * assertEquals("Successfully fetched the list of cities from the table",1,
	 * cityDAO.list().size());
	 * 
	 * }
	 */

	@Test
	public void testCRUDCity() {

		city = new City();
		city.setName("Madrid");
		city.setDescription("This is some description for Madrid");
		city.setImageURL(
				"https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Spain/Madrid/gran-via-madrid-night-lead-guide.jpg?imwidth=450");

		assertEquals("Successfully added a city inside the table", true, cityDAO.add(city));

		city = new City();

		city.setName("Oporto");
		city.setDescription("This is some description for Oporto");
		city.setImageURL("http://finedininglovers.cdn.crosscast-system.com/BlogPost/xl_16074_Porto-Portugal-TP.jpg");

		assertEquals("Successfully added a city inside the table", true, cityDAO.add(city));

		city = new City();
		city.setName("Ankara");
		city.setDescription("This is some description for Ankara");
		city.setImageURL("http://web2.bilkent.edu.tr/bilkentpost/wp-content/uploads/sites/37/2017/08/post8.jpg");
		assertEquals("Successfully added a city inside the table", true, cityDAO.add(city));

	}

}
