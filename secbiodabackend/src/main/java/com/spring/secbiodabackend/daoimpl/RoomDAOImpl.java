package com.spring.secbiodabackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.secbiodabackend.dao.RoomDAO;
import com.spring.secbiodabackend.dto.Hotel;
import com.spring.secbiodabackend.dto.Room;

@Repository("roomDAO")
@Transactional
public class RoomDAOImpl implements RoomDAO {

	@Autowired
	private SessionFactory sessionFactory;

	// SINGLE ROOM
	@Override
	public Room get(int roomId) {
		try {
			return sessionFactory.getCurrentSession().get(Room.class, Integer.valueOf(roomId));

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	// LIST ROOMS
	@Override
	public List<Room> list() {
		return sessionFactory.getCurrentSession().createQuery("FROM Room", Room.class).getResultList();

	}

	// INSERT
	@Override
	public boolean add(Room room) {
		try {
			sessionFactory.getCurrentSession().persist(room);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	// UPDATE
	@Override
	public boolean update(Room room) {
		try {
			sessionFactory.getCurrentSession().update(room);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	// DELETE
	@Override
	public boolean delete(Room room) {
		try {
			room.setActive(false);
			// call the update method
			return this.update(room);
		} catch (Exception ex) {
			ex.printStackTrace();

		}
		return false;
	}

	@Override
	public List<Room> listActiveRooms() {
		String selectActiveRooms = "FROM Room WHERE active= :active";
		return sessionFactory.getCurrentSession().createQuery(selectActiveRooms, Room.class)
				.setParameter("active", true).getResultList();
	}

	@Override
	public List<Room> listActiveRoomsByHotel(int hotelId) {
		String selectActiveRoomsByHotel = "FROM Room WHERE active= :active AND hotelId= :hotelId";
		return sessionFactory.getCurrentSession().createQuery(selectActiveRoomsByHotel, Room.class)
				.setParameter("active", true).setParameter("hotelId", hotelId).getResultList();
	}

	@Override
	public List<Room> getLastestActiveRooms(int count) {
		return sessionFactory.getCurrentSession().createQuery("FROM Room WHERE active= :active ORDER BY id", Room.class)
				.setParameter("active", true).setFirstResult(0).setMaxResults(count).getResultList();
	}

}
