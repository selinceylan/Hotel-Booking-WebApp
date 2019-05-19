package com.spring.secbiodabackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.secbiodabackend.dao.CityDAO;
import com.spring.secbiodabackend.dto.City;

@Repository("cityDAO")
@Transactional
public class CityDAOImpl implements CityDAO {

	@Autowired
	private SessionFactory sessionFactory;

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
		String selectActiveCity = "FROM City WHERE active = :active";
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCity);
		query.setParameter("active", true);
		return query.getResultList();
	}

	/*
	 * Getting single category based on id
	 */
	@Override
	public City get(int id) {

		return sessionFactory.getCurrentSession().get(City.class, Integer.valueOf(id));

	}

	@Override
	@Transactional
	public boolean add(City city) {
		try {
			sessionFactory.getCurrentSession().persist(city);

			return true;

		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	/*
	 * Updating a single city
	 */
	@Override
	public boolean update(City city) {
		try {
			sessionFactory.getCurrentSession().update(city);

			return true;

		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	/*
	 * Deleting a single city
	 */
	@Override
	public boolean delete(City city) {

		city.setActive(false);
		try {
			sessionFactory.getCurrentSession().update(city);

			return true;

		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}
