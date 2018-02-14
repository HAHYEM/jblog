package com.javaex.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

public class ApiUserController {
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(value="/user/api/idCheck", method=RequestMethod.POST)
	public boolean idCheck(@RequestBody UserVo userVo) {
		System.out.println(userVo.toString());

		return userService.idCheck(userVo.getId());
	}
	
}
