package edu.cs545.jungleresort.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.cs545.jungleresort.DAO.AdminDAO;
import edu.cs545.jungleresort.DAO.CustomerDAO;
import edu.cs545.jungleresort.domain.Admin;
import edu.cs545.jungleresort.domain.Customer;

@Controller
public class CustomerController {
	@Autowired
	CustomerDAO customerdao;
	
	@RequestMapping(value="/addcustomer", method = RequestMethod.GET)
	public String addCustomerGet(@ModelAttribute Customer customer){
		return "AddCustomer";
	}
	
	@RequestMapping(value="/addcustomer", method = RequestMethod.POST)
	public String addCustomerPost(@ModelAttribute @Valid Customer customer, BindingResult result){
		
		if(!result.hasErrors()){
			customerdao.save(customer);
			return "redirect:/customerlogin";
		}
		else
		return "AddCustomer";
	}
}