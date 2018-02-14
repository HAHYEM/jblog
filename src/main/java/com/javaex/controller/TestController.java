package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping("/spring")
	public String Hello(){
		System.out.println("Hello Jblog");
		return "/WEB-INF/views/index.jsp";
	}
}