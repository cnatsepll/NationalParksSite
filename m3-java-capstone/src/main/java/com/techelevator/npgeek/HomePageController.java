package com.techelevator.npgeek;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomePageController {
	
	@Autowired
	ParkDao parkDao;
	
	
	@RequestMapping(path="/", method=RequestMethod.GET)
	public ModelAndView displayPage() {
		return new ModelAndView("homePage").addObject("parks", parkDao.getAllParks());
	}
	
	@RequestMapping(path="/details", method=RequestMethod.GET)
	public String displayParkDetails() {
	    
		
		return "details";  
	}

}
