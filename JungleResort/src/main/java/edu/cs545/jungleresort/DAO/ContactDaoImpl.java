package edu.cs545.jungleresort.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.cs545.jungleresort.domain.Contact;


@Repository
@Transactional
public class ContactDaoImpl implements ContactDao {
 
	@Autowired
	private NamedParameterJdbcTemplate template;
 
	@Override
	public void saveContact(Contact contact) {
		final String SQL_INSERT_CONTACT_NAMED_PARAMETER = "insert into contact(contact_name, contact_address,contact_phone) values(:contactName, :contactAddress, :contactPhone)";
		SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(contact);
		template.update(SQL_INSERT_CONTACT_NAMED_PARAMETER, sqlParameterSource);
	}
 
}