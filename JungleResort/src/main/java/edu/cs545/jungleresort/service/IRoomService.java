package edu.cs545.jungleresort.service;

import java.util.List;

import edu.cs545.jungleresort.domain.Room;

public interface IRoomService {
	public Room addRoom(Room room);
	public void deleteRoom(int id);
	public Room getRoomById(int id);
	public List<Room> getAllRoom();
	public List<Room> getAllAvailableRoom();
}
