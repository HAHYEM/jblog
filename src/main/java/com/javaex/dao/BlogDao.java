package com.javaex.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BlogVo;
import com.javaex.vo.UserVo;

@Repository
public class BlogDao {
	
	@Autowired
	private SqlSession sqlSession;

	public int insert(UserVo userVo){
		Map<String, Object> bMap = new HashMap<>();
		bMap.put("userVo", userVo);
		bMap.put("root", "jblog"); //로고 파일 경로를 위한 루트 파일
		System.out.println(bMap.toString());
		
		int result = sqlSession.insert("blog.insertOfBlog",bMap);
		return result;
	}
	
	public BlogVo selectOneBlog(int userNo) {
		BlogVo blogVo = sqlSession.selectOne("blog.selectOneByUserNo", userNo);
		return blogVo;
	}
	
	public int blogUpdate(BlogVo blogVo) {
		int result = sqlSession.update("blog.updateByuserNo", blogVo);
		return result;
	}

}
