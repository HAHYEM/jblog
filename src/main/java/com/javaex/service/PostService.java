package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.CategoryDao;
import com.javaex.dao.PostDao;
import com.javaex.vo.PostVo;

@Service
public class PostService {
	@Autowired
	private PostDao postDao;
	
	@Autowired
	private CategoryDao categoryDao;

	public void writePost(String title, String content, int cateNo) {

		Map<String, Object> postMap = new HashMap<>();
		postMap.put("title", title);
		postMap.put("content", content);
		postMap.put("cateNo", cateNo);
		
		int result = postDao.writePost(postMap);
		System.out.println(result+ "건 post");
	}

	public List<PostVo> writeCateList(int cateNo) {
		List<PostVo> pList = postDao.writeCateList(cateNo);
		return pList;
	}

	public PostVo getPostVo(int postNo) {
		PostVo postVo = postDao.postOneCount(postNo);
		return postVo;
	}
	
	public int getRecentPost(int cateNo) {
		int postNo = postDao.selectRecentPost(cateNo);
		return postNo;
	}

	public List<PostVo> getPostList(int userNo) {
		List<PostVo> pList = postDao.getPostList(userNo);
		return pList;
	}
	
	public List<PostVo> postViewCate(int cateNo) {
		List<PostVo> pList = postDao.postViewCate(cateNo);
		return pList;
	}
}
