package com.javaex.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.PostService;
import com.javaex.vo.PostVo;

@Controller
public class ApiPostController {

	@Autowired
	private PostService postService;
	
	@ResponseBody
	@RequestMapping(value = "/post/postlist", method = RequestMethod.POST)
	public List<PostVo> writeCateList(@RequestParam("cateNo") int cateNo){
		List<PostVo> pList = postService.writeCateList(cateNo);
		return pList;
	}
	@ResponseBody
	@RequestMapping(value="/post/view", method=RequestMethod.POST)
	public PostVo viewPost(@RequestParam("postNo") int postNo) {
		PostVo postVo = postService.getPostVo(postNo);
		return postVo;
	}
	@ResponseBody
	@RequestMapping(value="/post/recentpost", method=RequestMethod.POST)
	public int recentPost(@RequestParam("cateNo") int cateNo) {
		int postNo = postService.getRecentPost(cateNo);
		return postNo;
	}
}
