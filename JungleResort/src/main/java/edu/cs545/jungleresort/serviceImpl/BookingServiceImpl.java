package edu.cs545.jungleresort.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cs545.jungleresort.DAO.BookingDAO;
import edu.cs545.jungleresort.domain.Booking;
import edu.cs545.jungleresort.service.BookingService;

@Service
public class BookingServiceImpl implements BookingService {
	@Autowired
	BookingDAO bookingdao;
	

	@Override
	public void saveBooking(Booking booking) {
		bookingdao.save(booking);
		
	}

	@Override
	public void deleteBookingById(int bookingId) {
		bookingdao.delete(bookingId);
	}

	@Override
	public Booking getBookingById(int bookingId) {
		// TODO Auto-generated method stub
		return bookingdao.findOne(bookingId);
	}

	@Override
	public List<Booking> getBookingByCustomerId(int customerId) {
		// TODO Auto-generated method stub
		return bookingdao.findByCustomerId(customerId);
	}

}