package com.javaex.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.UserService;

@Controller
public class ApiUserController {
	@Autowired
	private UserService userService;

	@ResponseBody
	@RequestMapping(value="/user/idCheck", method=RequestMethod.POST)
	public boolean idCheck(@RequestParam("id") String id) {
		System.out.println("id:"+id);
		boolean result = userService.idCheck(id);
		return result;
	}
}
