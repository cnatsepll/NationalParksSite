package com.techelevator.npgeek;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomePageController {
	
	@Autowired
	ParkDao parkDao;
	
	
	@RequestMapping(path="/", method=RequestMethod.GET)
	public ModelAndView displayPage() {
		return new ModelAndView("homePage").addObject("parks", parkDao.getAllParks());
	}
	
	@RequestMapping(path="/parkDetail", method=RequestMethod.GET)
	public String displayParkDetails(ModelMap modelHolder, @RequestParam String parkCode, HttpServletResponse response) throws IOException {
	    try {
	    	modelHolder.put("park", parkDao.getParkByParkCode(parkCode));
	    	return "parkDetail";
	    } catch(NumberFormatException | IndexOutOfBoundsException e) {
	    	response.sendError(HttpServletResponse.SC_BAD_REQUEST);
	    	return null;
	    }		
	}

}
