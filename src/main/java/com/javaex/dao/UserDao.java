package com.javaex.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;
@Repository
public class UserDao {
	@Autowired
	private SqlSession sqlSession;	
	
	public int insert(UserVo userVo) {
		int result = sqlSession.insert("user.insertOfUser",userVo);
		System.out.println(result+"insert");
		return result;
	}

	public UserVo inGetUser(String id, String password) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("password", password);
		System.out.println("login");
		UserVo userVo = sqlSession.selectOne("user.selectUserByIdPW", map);
		System.out.println(userVo);
		return userVo;
	}
	
	public UserVo outGetUser(int no) {
		UserVo userVo = sqlSession.selectOne("user.selectUserByNo", no);
		return userVo;
	}

	public String getUser(String id) {
		String getId = sqlSession.selectOne("user.selectUserID", id); //변수값 같으면 안됨
		return getId;		
	}
	
	public String selectUrlById(String id) {
		return sqlSession.selectOne("user.selectUrlById",id);
	}

	public UserVo selectUser(String id) {
		UserVo userInfo = sqlSession.selectOne("user.selectOneById", id);
		return userInfo;
	}

	public int getUserNo(String id) {
		int result = sqlSession.selectOne("user.selectUserNoById", id);	
		System.out.println("UserNo: " + result);
		return result;
	}
	
}
