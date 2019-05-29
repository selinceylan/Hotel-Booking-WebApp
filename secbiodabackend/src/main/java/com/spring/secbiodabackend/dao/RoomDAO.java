package com.spring.secbiodabackend.dao;

import java.util.List;

import com.spring.secbiodabackend.dto.Room;

public interface RoomDAO {

	Room get(int roomId);

	List<Room> list();

	boolean add(Room room);

	boolean update(Room room);

	boolean delete(Room room);

	// business methods
	List<Room> listActiveRooms();

	List<Room> listActiveRoomsByHotel(int hotelId);

	List<Room> getLastestActiveRooms(int count);

}
