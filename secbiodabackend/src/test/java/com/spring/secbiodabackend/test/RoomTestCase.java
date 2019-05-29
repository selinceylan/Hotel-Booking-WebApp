package com.spring.secbiodabackend.test;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import static org.junit.Assert.assertEquals;
import com.spring.secbiodabackend.dao.RoomDAO;
import com.spring.secbiodabackend.dto.Room;

public class RoomTestCase {

	private static AnnotationConfigApplicationContext context;
	private static RoomDAO roomDAO;

	private Room room;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.spring.secbiodabackend");
		context.refresh();
		roomDAO = (RoomDAO) context.getBean("roomDAO");
	}

	/*@Test
	public void testCRUDRoom() {
		room = new Room();
		room.setRoomType("double bed");
		room.setPrice("7100");
		room.setImageURL1("https://q-cf.bstatic.com/images/hotel/max1024x768/551/5510770.jpg");
		room.setImageURL2("https://r-cf.bstatic.com/images/hotel/max1024x768/180/180848967.jpg");
		room.setActive(true);
		room.setHotelId(8);
		room.setSleeps("standard number of people 4");
		assertEquals("Something went wrong while inserting a new hotel", true, roomDAO.add(room));

		room = roomDAO.get(1);
		room.setRoomType("double bed");
		assertEquals("Something went wrong while updating the exiting record!", true, roomDAO.update(room));

		assertEquals("Something went wrong while deleting the exiting record!", true, roomDAO.delete(room));

		assertEquals("Something went wrong while fetching the exiting record!", 2, roomDAO.list().size());
	}*/
		
		
		@Test
		public void testListActiveRooms() {
			assertEquals("Something went wrong while fetching the list of rooms!", 1, roomDAO.listActiveRooms().size());

		}

		@Test
		public void testListActiveRoomsByHotel() {
			assertEquals("Something went wrong while fetching the list of rooms!", 1,
					roomDAO.listActiveRoomsByHotel(8).size());

		}

		@Test
		public void testGetLatestActiveRoomsByHotel() {
			assertEquals("Something went wrong while fetching the list of rooms!", 1,
					roomDAO.getLastestActiveRooms(8).size());

		}
}
