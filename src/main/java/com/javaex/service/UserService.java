package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BlogDao;
import com.javaex.dao.CategoryDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;
@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private BlogDao blogDao;
	
	@Autowired
	private CategoryService categoryService;
	
	public void join(UserVo userVo) {
		userDao.insert(userVo);
		blogDao.insert(userVo);
		categoryService.makeCategory(userVo);
	}

	public UserVo login(String id, String password) {
		return userDao.inGetUser(id, password);
	}
	
	public UserVo logout(int no) {
		return userDao.outGetUser(no);
	}
		
	public boolean idCheck(String id) {
		
		boolean result;
		String getId = userDao.getUser(id);
		if(getId != null) {
			result = false;
		} else {
			result= true;
		}
		return result;
	}

}
