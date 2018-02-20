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
import com.javaex.service.CategoryService;
import com.javaex.service.PostService;
import com.javaex.service.UserService;
import com.javaex.vo.BlogVo;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.PostVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/{id}")
public class BlogController {

	@Autowired
	private BlogService blogService;
	
	@Autowired
	private PostService postService;

	@Autowired
	private UserService userService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value="")
	public String userBlog(@PathVariable("id") String id
						 , HttpSession session
						 , Model model){
		System.out.println("id: "+ id);
		String url = blogService.getUrl(id);
		model.addAttribute("url",url);
		System.out.println("main: " + url);
		
		int userNo = userService.getUserNo(id);
		System.out.println("userNo: "+userNo);
		
		BlogVo bVo = blogService.getBlogVo(userNo);
		List<CategoryVo> cateList = categoryService.getCateList(userNo);
		List<PostVo> pList = postService.getPostList(userNo);
		System.out.println(pList);
		
		model.addAttribute("blogVo", bVo);
		model.addAttribute("cateList", cateList);
		model.addAttribute("pList", pList);
		return "blog/blog-main";
	}
	
	@RequestMapping("/admin")
	public String admin(@PathVariable("id") String id
					  , Model model){
		int userNo = userService.getUserNo(id);
		BlogVo bVo = blogService.getBlogVo(userNo);
		
		model.addAttribute("blogVo", bVo);
		return "redirect:/{id}/admin/basic";
	}
	
	@RequestMapping(value="admin/basic")
	public String blogAdminBasic(@PathVariable("id") String loginId
								, Model model
								, HttpSession session) {
		UserVo authUser = (UserVo)session.getAttribute("authUser");

		int userNo = userService.getUserNo(loginId);
		BlogVo bVo = blogService.getBlogVo(userNo);

		model.addAttribute("blogVo", bVo);

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
	public String adminCate(@PathVariable("id") String id, 
			HttpSession session,
			Model model
			) {
		int no = userService.getUserNo(id);
		BlogVo bVo = blogService.getBlogVo(no);

		model.addAttribute("blogVo", bVo);
		UserVo authUser = (UserVo)session.getAttribute("authUser");

		if(authUser.getId().equals(id)) {

			return "blog/admin/blog-admin-cate";
		}else {
			return "blog/blog-main";
		}
	}
	
	@RequestMapping("/admin/write")
	public String wirteForm(@PathVariable("id") String id, Model model, HttpSession session){

		int no = userService.getUserNo(id);
		BlogVo bVo = blogService.getBlogVo(no);

		model.addAttribute("blogVo", bVo);
		
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		int userNo = userVo.getUserNo();
		
		List<CategoryVo> cList = blogService.getCateList(userNo);
		model.addAttribute("categoryList", cList);
		System.out.println(cList.get(0).toString());
		return "blog/admin/blog-admin-write";
	}
	
	@RequestMapping("/admin/post")
	public String wirte(@PathVariable("id") String id
						, Model model
						, HttpSession session
						, @RequestParam("title") String title
						, @RequestParam("content") String content
						, @RequestParam("category") int cateNo){
		int no = userService.getUserNo(id);
		BlogVo bVo = blogService.getBlogVo(no);

		model.addAttribute("blogVo", bVo);
		postService.writePost(title, content, cateNo);
		return "redirect:/{id}/admin/write";
	}
}
