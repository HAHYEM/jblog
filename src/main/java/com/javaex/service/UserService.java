package com.javaex.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaex.dao.BlogDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.BlogVo;
import com.javaex.vo.UserVo;
@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private BlogDao blogDao;
	
	public void join(UserVo userVo) {
		userDao.insert(userVo);
		blogDao.insert(userVo);
	}

	public UserVo login(String id, String password) {
		return userDao.inGetUser(id, password);
	}
	
	public UserVo logout(int no) {
		return userDao.outGetUser(no);
	}
		
	public boolean idCheck(String id) {
		boolean result;
		UserVo userVo = userDao.getUser(id);
		if(userVo != null) {
			result = false;
		}else {
			result = true;
		}
		return result;
	}

}
