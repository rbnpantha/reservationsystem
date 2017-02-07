package edu.cs545.jungleresort.service;

import edu.cs545.jungleresort.domain.Booking;

public interface BookingService {
	public void saveBooking(Booking booking);
	public void deleteBookingById(int bookingId);
	//public void updateBooking(Booking booking);
}