package edu.cs545.jungleresort.DAO;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.cs545.jungleresort.domain.Booking;

@Repository
public interface BookingDAO extends CrudRepository <Booking, Integer>{

}