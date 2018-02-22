package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CategoryVo;
import com.javaex.vo.UserVo;

@Repository
public class CategoryDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int cateInsert(Map<String, Object> cMap) {
		int result = sqlSession.insert("category.insertOfCategory", cMap);
		return result;
	}

	public List<CategoryVo> selectCateList(int userNo){
		List<CategoryVo> cateList = sqlSession.selectList("category.selectCategoryByUserNo", userNo);
		System.out.println(cateList);
		return cateList;
	}
	
	public int insertCategory(CategoryVo categoryVo) {
		int result = sqlSession.insert("category.insertCategoryByCategoryVo", categoryVo);
		return result;
	}
	
	public CategoryVo selectOne(int cateNo) {
		CategoryVo cateVo = sqlSession.selectOne("category.selectOneCategoryByCateNo", cateNo);
		return cateVo;
	}

	public CategoryVo selectCategoryByCateNo(int cateNo) {
		CategoryVo cateVo = sqlSession.selectOne("category.selectCategoryByCateNo", cateNo);
		return cateVo;
	}
	
	
	public int deleteCategory(int cateNo){
		int result = sqlSession.delete("category.deleteCategoryByCateNo", cateNo);
		System.out.println(result + "건 삭제");
		
		return result;
	}

	public List<CategoryVo> getCateList(int userNo) {
		List<CategoryVo> cList = sqlSession.selectList("category.getCategoryWriteListByUserNo", userNo);
		return cList;
	}
	
	public int getCateNo(Map<String, Object> cateNoMap) {
		int cateNo = sqlSession.selectOne("category.getCategoryNoByMap", cateNoMap);
		return cateNo;
	}

	public CategoryVo viewCate(int cateNo) {
		CategoryVo cateVo = sqlSession.selectOne("category.getViewCateByCateNo", cateNo);
		return cateVo;
	}
}
