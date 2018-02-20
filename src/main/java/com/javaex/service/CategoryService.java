package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.CategoryDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.UserVo;

@Service
public class CategoryService {

	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private UserDao userDao;
	
	public void makeCategory(UserVo userVo) {
		int userNo = userVo.getUserNo();
		
		String DefaultCategory = "미분류";
		
		Map<String, Object> cMap = new HashMap<>();
		cMap.put("userNo", userNo);
		cMap.put("DefaultCategory", DefaultCategory);
		cMap.put("defaultDescription", "카테고리를 지정하지 않은 경우");
		
		categoryDao.cateInsert(cMap);
	}
	
	public List<CategoryVo> getCateList(int userNo){
		List<CategoryVo> cateList = categoryDao.selectCateList(userNo);
		return cateList;
	}
	public CategoryVo addCategory(CategoryVo categoryVo) {
		int result = categoryDao.insertCategory(categoryVo);
		System.out.println(result + "건 카테고리 추가");
		CategoryVo cateVo = categoryDao.selectOne(categoryVo.getCateNo());
		return cateVo;
	}
	public boolean deleteCategory(int cateNo) {
		int count = categoryDao.deleteCategory(cateNo);
		boolean result = false;
		if(count == 1) {
			result = true;
		}
		System.out.println(count + "개 카테고리 제거 완료");
		
		return result;
	}

	public Map<String, Object> blogMain(String id, String cateName) {
		UserVo userVo = userDao.selectUser(id);
		int userNo = userVo.getUserNo();
		
		Map<String, Object> bMap = new HashMap<>();
		bMap.put("userNo", userNo);
		bMap.put("cateName", cateName);
		
		int cateNo = categoryDao.getCateNo(bMap);
		
		List<CategoryVo> cateList = categoryDao.getCateList(userNo);
		
		Map<String, Object> cateMap = new HashMap<>();
		cateMap.put("cateNo", cateNo);
		cateMap.put("cateList", cateList);
	
		return cateMap;
	}

}
