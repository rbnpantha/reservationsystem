package edu.cs545.jungleresort.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.cs545.jungleresort.domain.Room;
import edu.cs545.jungleresort.enumeration.RoomFeatures;

@Controller
public class ContactController {

	/*@Autowired
	private ContactService contactService;*/

	/*@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home() {
		return "homepage";
	}*/

	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = { "/siteHome" }, method = RequestMethod.GET)
	public String siteHome() {
		return "siteHome";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactPage() {
		return "contactpage";
	}
	@RequestMapping(value = "/addrooms", method = RequestMethod.GET)
	public String addRoomPage(@ModelAttribute("room") Room room, @ModelAttribute("roomFeaturesTrans")
    List<RoomFeatures> roomFeaturesTrans) {
		return "addRoom";
	}
/*
	@RequestMapping(value = "/saveContact", method = RequestMethod.POST)
	@ResponseBody
	public String saveContact(@RequestParam(value = "name") String name,
			@RequestParam(value = "address") String address, @RequestParam(value = "phone") String phone
																										 * HttpServletRequest
																										 * request
																										 ) {
		System.out.println("name : " + name + ", address : " + address + ", phone : " + phone);
		// or using HttpServletRequest, System.out.println("name : " +
		// request.getParameter("name"));

		// create contact object
		Contact contact = new Contact();
		contact.setContactName(name);
		contact.setContactAddress(address);
		contact.setContactPhone(phone);

		// save contact to database
		contactService.saveContact(contact);

		return "Contact successfully saved";
	}*/

}