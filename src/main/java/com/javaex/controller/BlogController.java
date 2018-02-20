package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.BlogService;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/{id}")
public class BlogController {

	@Autowired
	private BlogService blogService;
	
	@RequestMapping(value="")
	public String userBlog(@PathVariable("id") String id
						 , HttpSession session
						 , Model model){
		System.out.println("id: "+ id);
		String url = blogService.getUrl(id);
		model.addAttribute("url",url);
		System.out.println("main: " + url);
		return "blog/blog-main";
	}
	
	@RequestMapping("/admin")
	public String admin(@PathVariable("id") String id){
		return "redirect:/{id}/admin/basic";
	}
	
	@RequestMapping(value="admin/basic")
	public String blogAdminBasic(@PathVariable("id") String loginId
								, Model model
								, HttpSession session) {
		UserVo authUser = (UserVo)session.getAttribute("authUser");

		if(authUser.getId().equals(loginId)) {
			
			String url = blogService.getUrl(loginId);
			model.addAttribute("url",url);
			System.out.println("url: " + url);
			return "blog/admin/blog-admin-basic";
		}else {
			return "blog/blog-main";
		}
	}

	@RequestMapping(value="/admin/uploadInfo")
	public String blogUpdate(Model model
							, @PathVariable("id") String loginId
							, @RequestParam(value = "title", required = false) String blogTitle
							, @RequestParam(value = "userNo", required = true) int userNo
							, @RequestParam(value = "logo-file", required = false) MultipartFile file
							, HttpSession session) {

		System.out.println("업데이트 NO: " + userNo);
		blogService.blogUpdate(blogTitle, userNo, file);
	
		return "redirect:/" + loginId + "/admin/basic";
	}
	
	@RequestMapping(value = "/admin/cate")
	public String adminCate(@PathVariable("id") String loginId, 
			HttpSession session
			) {
		UserVo authUser = (UserVo)session.getAttribute("authUser");

		if(authUser.getId().equals(loginId)) {

			return "blog/admin/blog-admin-cate";
		}else {
			return "blog/blog-main";
		}
	}
	
	@RequestMapping("/admin/write")
	public String wirteForm(Model model, HttpSession session){
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		int userNo = userVo.getUserNo();
		
		List<CategoryVo> cList = blogService.getCateList(userNo);
		model.addAttribute("categoryList", cList);
		System.out.println(cList);
		return "blog/admin/blog-admin-write";
	}
}
