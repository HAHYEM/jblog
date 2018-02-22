package com.javaex.api.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.CategoryService;
import com.javaex.service.PostService;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.PostVo;

@Controller
public class ApiCategoryController {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private PostService postService;
	
	@ResponseBody
	@RequestMapping(value = "/api/getcate", method = RequestMethod.POST)
	public List<CategoryVo> getCateList(@RequestParam("userNo") int userNo){
		List<CategoryVo> cateList = categoryService.getCateList(userNo);
		return cateList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/api/addcate", method = RequestMethod.POST)
	public CategoryVo addCategory(@RequestBody CategoryVo categoryVo){
		CategoryVo cvo =categoryService.addCategory(categoryVo);
		return cvo;
	}
	
	@ResponseBody
	@RequestMapping(value = "/api/deletecate", method = RequestMethod.POST)
	public boolean deleteCategory(@RequestParam("cateNo") int cateNo) {
		boolean result = categoryService.deleteCategory(cateNo);
		System.out.println("!!!!"+result);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/category/view", method=RequestMethod.POST)
	public List<PostVo> postViewCate(@RequestParam("cateNo") int cateNo) {
		CategoryVo cateVo = categoryService.viewCate(cateNo);
		List<PostVo> pList = postService.postViewCate(cateNo);
		return pList;
	}

}
