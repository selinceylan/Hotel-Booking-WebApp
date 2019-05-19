package com.spring.secbiodabackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.secbiodabackend.dao.HotelDAO;
import com.spring.secbiodabackend.dto.Hotel;

@Repository("hotelDAO")
@Transactional
public class HotelDAOImpl implements HotelDAO {

	@Autowired
	private SessionFactory sessionFactory;

	// SINGLE HOTEL
	@Override
	public Hotel get(int hotelId) {
		try {
			return sessionFactory.getCurrentSession().get(Hotel.class, Integer.valueOf(hotelId));

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	// LIST HOTELS
	@Override
	public List<Hotel> list() {
		return sessionFactory.getCurrentSession().createQuery("FROM Hotel", Hotel.class).getResultList();

	}

	// INSERT HOTEL
	@Override
	public boolean add(Hotel hotel) {
		try {
			sessionFactory.getCurrentSession().persist(hotel);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	// UPDATE
	@Override
	public boolean update(Hotel hotel) {
		try {
			sessionFactory.getCurrentSession().update(hotel);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	// DELETE
	@Override
	public boolean delete(Hotel hotel) {
		try {
			hotel.setActive(false);
			// call the update method
			return this.update(hotel);
		} catch (Exception ex) {
			ex.printStackTrace();

		}
		return false;
	}

	@Override
	public List<Hotel> listActiveHotels() {
		String selectActiveHotels = "FROM Hotel WHERE active= :active";
		return sessionFactory.getCurrentSession().createQuery(selectActiveHotels, Hotel.class)
				.setParameter("active", true).getResultList();
	}

	@Override
	public List<Hotel> listActiveHotelsByCity(int cityId) {
		String selectActiveHotelsByCity = "FROM Hotel WHERE active= :active AND cityId= :cityId";
		return sessionFactory.getCurrentSession().createQuery(selectActiveHotelsByCity, Hotel.class)
				.setParameter("active", true).setParameter("cityId", cityId).getResultList();
	}

	@Override
	public List<Hotel> getLastestActiveHotels(int count) {

		return sessionFactory.getCurrentSession()
				.createQuery("FROM Hotel WHERE active= :active ORDER BY id", Hotel.class).setParameter("active", true)
				.setFirstResult(0).setMaxResults(count).getResultList();
	}

}
