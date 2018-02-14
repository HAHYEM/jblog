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
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("password", password);
		System.out.println("login");
		return sqlSession.selectOne("user.selectUserByIdPW", map);
	}
	
	public UserVo outGetUser(int no) {
		UserVo userVo = sqlSession.selectOne("user.selectUserByNo", no);
		return userVo;
	}

	public UserVo getUser(String id) {
		UserVo userVo = sqlSession.selectOne("user.selectUserById", id);
		return userVo;
	}

}
