package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.BlogService;
import com.javaex.vo.BlogVo;

@Controller
@RequestMapping("/{id}")
public class BlogController {

	@Autowired
	private BlogService blogService;
	
	@RequestMapping(value="")
	public String userBlog(@PathVariable("id") String id){
		System.out.println("id: "+ id);
		return "blog/blog-main";
	}
	
	@RequestMapping("/admin")
	public String admin(@PathVariable("id") String id){
		return "redirect:/{id}/admin/basic";
	}
	
	@RequestMapping(value="/admin/basic")
	public String blogAdminBasic(@PathVariable("id") String id, Model model) {
		String url ="fileupload/";
		model.addAttribute("url", url);
		return "blog/admin/blog-admin-basic";
	}
	
	@RequestMapping(value="/admin/upload")
	public String blogUpdate(Model model
							, @RequestParam(value = "title", required = false) String title
							, @RequestParam(value = "userNo", required = true) int userNo
							, @RequestParam(value = "logo-file", required = false) MultipartFile file
							, HttpSession session) {
		BlogVo blogVo = blogService.blogUpdate(title, userNo, file);
		String url = "fileupload/";
		
		model.addAttribute("url", url);
		
		session.setAttribute("blogVo", blogVo);
		return "blog/blog-main";
	}
	
	
}
