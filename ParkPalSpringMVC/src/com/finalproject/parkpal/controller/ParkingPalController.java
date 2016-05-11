package com.finalproject.parkpal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ParkingPalController {
	
	@RequestMapping("/loginPage")
	public ModelAndView login(){
		ModelAndView model = new ModelAndView("loginPage");
		
		return model;
	}
	
	@RequestMapping("/userLogged")
	public ModelAndView userLogged(){
		ModelAndView model = new ModelAndView("userLogged");
		
		return model;
	}
	
	@RequestMapping("/register")
	public ModelAndView register(){
		ModelAndView model = new ModelAndView("register");
		
		return model;
	}
}

