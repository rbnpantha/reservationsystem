package edu.cs545.jungleresort.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cs545.jungleresort.DAO.ContactDao;
import edu.cs545.jungleresort.domain.Contact;



@Service
public class ContactServiceImpl implements ContactService{

	@Autowired
	private ContactDao contactDao;

	@Override
	public void saveContact(Contact contact) {
		contactDao.saveContact(contact);
	}

}
