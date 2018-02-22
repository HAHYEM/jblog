package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.PostVo;

@Repository
public class PostDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int writePost(Map postMap) {
		int result = sqlSession.insert("post.writePostByMap", postMap);
		return result;
	}

	public List<PostVo> writeCateList(int cateNo) {
		List<PostVo> pList = sqlSession.selectList("post.writeCatePostListByCateNo", cateNo);
		return pList;
	}

	public PostVo postOneCount(int postNo) {
		PostVo postVo = sqlSession.selectOne("post.selectPostCountByPostNo", postNo);
		return postVo;
	}

	/*public int postCount(int cateNo) {
		int postCnt = sqlSession.selectOne("post.selectPostCountByCateNo", cateNo);
		return postCnt;
	}*/
	
	public int selectRecentPost(int cateNo) {
		int postNo = sqlSession.selectOne("post.getRecentPostByCateNo", cateNo);
		return postNo;
	}

	public List<PostVo> getPostList(int userNo) {
		List<PostVo> pList =sqlSession.selectList("post.getPostListByUserNo", userNo);
		System.out.println("메롱"+pList);
		System.out.println(userNo);		
		return pList;
	}
	
	public List<PostVo> postViewCate(int cateNo) {
		List<PostVo> pList =sqlSession.selectList("post.postViewCateByCateNo", cateNo);
		System.out.println("메롱"+pList);
		System.out.println(cateNo);		
		return pList;
	}
	
}
