package edu.cs545.jungleresort.annotations;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import edu.cs545.jungleresort.DAO.RoomDAO;

public class UniqueRoomNoValidator implements ConstraintValidator<UniqueRoomNo, Integer>{
	@Autowired
	private RoomDAO roomdao;
	
	
	@Override
	public void initialize(UniqueRoomNo constraintAnnotation) {
	}

	@Override
	public boolean isValid(Integer roomNo, ConstraintValidatorContext context) {
		return roomdao.findRoomByNumber(roomNo) == null;
	}
	

}
