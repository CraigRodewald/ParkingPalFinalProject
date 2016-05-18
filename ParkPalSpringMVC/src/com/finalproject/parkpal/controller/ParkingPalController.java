package com.finalproject.parkpal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.parkpal.dao.MemberDAO;
import com.finalproject.parkpal.dao.NewMemberDAO;
import com.finalproject.parkpal.dto.Member;

@Controller
public class ParkingPalController {

	@RequestMapping("/loginPage")
	public ModelAndView login(@RequestParam(value = "email", required = false) String email,
							  @RequestParam(value = "password", required = false) String password) {

		try {
			Member member = new Member();
			member.setEmail(email);
			member.setPassword(password);
			if (email != null || password != null) {
				boolean userIsMember = MemberDAO.checkIfMemberExists(member);

				if (userIsMember) {
					ModelAndView model = new ModelAndView("userLogged");
					return model;
					
				} else {
					ModelAndView model = new ModelAndView("invalidLogin");
					return model;
				}
			}
		} catch (Throwable theException) {
			System.out.println(theException);
		}

		ModelAndView model = new ModelAndView("/loginPage");
		return model;
	}

	@RequestMapping("/userLogged")
	public ModelAndView userLogged() {
		try {
			Member member = new Member();
			if (member.getFirstName() == null) {
				member.setFirstName("ParkPal");
				member.setLastName("Guest");
				member.setEmail(" ");
				member.setPassword(" ");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		ModelAndView model = new ModelAndView("userLogged");

		return model;
	}

	@RequestMapping("/register")
	public ModelAndView registerGet(@RequestParam(value = "email", required = false) String email,
									@RequestParam(value = "password", required = false) String password,
									@RequestParam(value = "first_name", required = false) String firstName,
									@RequestParam(value = "last_name", required = false) String lastName) {

		try {
			Member newMember = new Member();
			newMember.setEmail(email);
			newMember.setPassword(password);
			newMember.setFirstName(firstName);
			newMember.setLastName(lastName);

			if (email != null || password != null || firstName != null || lastName != null) {
				System.out.println("Adding user to database");
				NewMemberDAO.addNewUserToDatabase(newMember);
				ModelAndView model = new ModelAndView("loginPage");
				return model;
			}
		}

		catch (Throwable theException) {
			System.out.println(theException);
		}
		ModelAndView model = new ModelAndView("register");
		return model;
	}

	@RequestMapping("/invalidLogin")
	public ModelAndView invalidLogin() {
		ModelAndView model = new ModelAndView("invalidLogin");

		return model;
	}
	
	@RequestMapping("/home")
	public ModelAndView homePage() {
		ModelAndView model = new ModelAndView("home");

		return model;
	}
}