package edu.cs545.jungleresort.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.cs545.jungleresort.DAO.AdminDAO;
import edu.cs545.jungleresort.domain.Admin;

@Controller
public class AdminController {
	@Autowired
	AdminDAO admindao;
	
	@RequestMapping(value="/addadmin", method = RequestMethod.GET)
	public String addAdminGet(@ModelAttribute Admin admin){
		return "AddAdmin";
	}
	
	@RequestMapping(value="/addadmin", method = RequestMethod.POST)
	public String addAdminPost(@ModelAttribute @Valid Admin admin, BindingResult result){
		
		if(!result.hasErrors()){
			admindao.save(admin);
			return "redirect:/adminlogin";
		}
		else
		return "AddAdmin";
	}
}