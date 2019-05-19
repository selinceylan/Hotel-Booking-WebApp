package com.spring.secbiodabackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.spring.secbiodabackend.dao.HotelDAO;
import com.spring.secbiodabackend.dto.Hotel;

public class HotelTestCase {

	private static AnnotationConfigApplicationContext context;
	private static HotelDAO hotelDAO;

	private Hotel hotel;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.spring.secbiodabackend");
		context.refresh();
		hotelDAO = (HotelDAO) context.getBean("hotelDAO");
	}

	/*
	 * @Test public void testCRUDHotel() {
	 * 
	 * // create operation hotel = new Hotel();
	 * 
	 * hotel.setName("Bluesock Hostels Porto"); hotel.setDescription(
	 * "Porto'nun Ribeira ilçesinde yer alan Bluesock Hostels Porto tarihi bir binanın geleneksel detaylarını modern bir konseptle harmanlamaktadır."
	 * ); hotel.setAddress(" União de Freguesias do Centro, Porto ");
	 * hotel.setStar("4"); hotel.setRating("9.0"); hotel.setImageURL1(
	 * "https://t-ec.bstatic.com/images/hotel/max1024x768/899/89918770.jpg");
	 * hotel.setImageURL2(
	 * "https://t-ec.bstatic.com/images/hotel/max1280x900/112/112315260.jpg");
	 * hotel.setImageURL3(
	 * "https://s-ec.bstatic.com/images/hotel/max1280x900/899/89915436.jpg");
	 * hotel.setActive(true); hotel.setCityId(2); hotel.setOwnerId(3);
	 * 
	 * assertEquals("Something went wrong while inserting a new hotel", true,
	 * hotelDAO.add(hotel));
	 * 
	 * // reading and updating the hotel hotel = hotelDAO.get(1);
	 * hotel.setName("Petit Palace Alcalá");
	 * assertEquals("Something went wrong while updating the exiting record!", true,
	 * hotelDAO.update(hotel));
	 * assertEquals("Something went wrong while deleting the exiting record!", true,
	 * hotelDAO.delete(hotel));
	 * 
	 * // list
	 * assertEquals("Something went wrong while fetching the exiting record!", 2,
	 * hotelDAO.list().size());
	 * 
	 * }
	 */

	@Test
	public void testListActiveHotels() {
		assertEquals("Something went wrong while fetching the list of hotels!", 1, hotelDAO.listActiveHotels().size());

	}

	@Test
	public void testListActiveHotelsByCity() {
		assertEquals("Something went wrong while fetching the list of hotels!", 1,
				hotelDAO.listActiveHotelsByCity(2).size());

	}

	@Test
	public void testGetLatestActiveHotelsByCity() {
		assertEquals("Something went wrong while fetching the list of hotels!", 1,
				hotelDAO.getLastestActiveHotels(2).size());

	}

}
