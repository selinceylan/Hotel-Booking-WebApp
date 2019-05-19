package com.spring.secbiodabackend.dao;

import java.util.List;

import com.spring.secbiodabackend.dto.Hotel;

public interface HotelDAO {

	Hotel get(int hotelId);

	List<Hotel> list();

	boolean add(Hotel hotel);

	boolean update(Hotel hotel);

	boolean delete(Hotel hotel);

	// business methods
	List<Hotel> listActiveHotels();

	List<Hotel> listActiveHotelsByCity(int cityId);

	List<Hotel> getLastestActiveHotels(int count);

}
