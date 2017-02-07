package edu.cs545.jungleresort.DAO;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.cs545.jungleresort.domain.Reservation;

@Repository
public interface ReservationDAO extends CrudRepository<Reservation, Integer>{

}
