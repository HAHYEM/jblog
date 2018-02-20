package com.javaex.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.CategoryService;
import com.javaex.vo.CategoryVo;

@Controller
public class ApiCategoryController {
	@Autowired
	private CategoryService categoryService;
	
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
		return result;
	}

}
