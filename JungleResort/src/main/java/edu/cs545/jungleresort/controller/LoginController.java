package edu.cs545.jungleresort.controller;

import static org.hamcrest.CoreMatchers.notNullValue;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import edu.cs545.jungleresort.domain.Admin;
import edu.cs545.jungleresort.domain.Customer;
import edu.cs545.jungleresort.service.IAdminService;
import edu.cs545.jungleresort.service.ICustomerService;

@Controller
public class LoginController {
	@Autowired
	IAdminService adminservice;
	
	@Autowired
	ICustomerService customerservice;

	@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
	public String adminLoginGet() {
		return "AdminLogin";
	}

	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String adminLoginPost(@CookieValue(value = "username", defaultValue = "") String username, Model model,
			HttpSession session, @ModelAttribute Admin admin, boolean remember, HttpServletResponse response) {

		if (adminservice.loginAuthenticate(admin.getUsername(), admin.getPassword())) {
			System.out.println("login auth successful");
			if (remember && username.isEmpty()) {
				Cookie cookie = new Cookie("usernameAdmin", admin.getUsername());
				cookie.setMaxAge(30 * 24 * 60 * 60);
				response.addCookie(cookie);
			}

			else if (!remember) {
				Cookie cookie = new Cookie("usernameAdmin", null);
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			session.setAttribute("usernameAdmin", admin.getUsername());

			// redirectAttributes.addFlashAttribute("usernameFlash",
			// user.getUsername());
			return "redirect:/allroomslist";
		} else {
			System.out.println("loginFailed");
			model.addAttribute("loginfail", "Username/password is incorrect");
			return "AdminLogin";
		}
	}
	
	@RequestMapping(value = "/customerlogin", method = RequestMethod.GET)
	public String customerLoginGet() {
		return "CustomerLogin";
	}

	@RequestMapping(value = "/customerlogin", method = RequestMethod.POST)
	public String customerLoginPost(@CookieValue(value = "username", defaultValue = "") String username, Model model,
			HttpSession session, @ModelAttribute Customer customer, boolean remember, HttpServletResponse response) {

		if (customerservice.loginAuthenticateCust(customer.getUsername(), customer.getPassword())) {
			System.out.println("login auth successful");
			if (remember && username.isEmpty()) {
				Cookie cookie = new Cookie("usernameCust", customer.getUsername());
				cookie.setMaxAge(30 * 24 * 60 * 60);
				response.addCookie(cookie);
			}

			else if (!remember) {
				Cookie cookie = new Cookie("usernameCust", null);
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			session.setAttribute("usernameCust", customer.getUsername());

			// redirectAttributes.addFlashAttribute("usernameFlash",
			// user.getUsername());
			return "redirect:/allroomslist";
		} else {
			System.out.println("loginFailed");
			model.addAttribute("loginfail", "Username/password is incorrect");
			return "CustomerLogin";
		}
	}
	
	
}