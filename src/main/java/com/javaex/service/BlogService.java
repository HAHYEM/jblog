package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.BlogDao;
import com.javaex.dao.CategoryDao;
import com.javaex.dao.FileUploadDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.BlogVo;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.FileUploadVo;
import com.javaex.vo.UserVo;

@Service
public class BlogService {
	
	@Autowired
	private BlogDao blogDao;
	
	@Autowired
	private FileUploadDao fileUploadDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	public BlogVo blogSelect(UserVo userVo) {
		int userNo = userVo.getUserNo();
		BlogVo blogVo = blogDao.selectOneBlog(userNo);
		return blogVo;
	}
	
	public String getUrl(String id) {
		
		return userDao.selectUrlById(id);
	}

	public BlogVo blogUpdate(String title, int userNo, MultipartFile file) {
		String logoFile = "";
		
		FileUploadVo vo = fileUpload(file);
		logoFile = vo.getSaveName();
		System.out.println(logoFile);
		
		BlogVo blogVo = new BlogVo();
		blogVo.setBlogTitle(title);
		blogVo.setUserNo(userNo);
		blogVo.setLogoFile(logoFile);
		
		blogDao.blogUpdate(blogVo);
		
		BlogVo blogPlusVo = blogDao.selectOneBlog(userNo);
		return blogPlusVo;
	}
	
	public FileUploadVo fileUpload(MultipartFile file) {
		String saveDir = "D:\\javaStudy\\workspace\\jblog\\jblogupload";
		
		FileUploadVo fileUploadVo = new FileUploadVo();

		String orgName = file.getOriginalFilename();
		System.out.println(orgName);

		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println(exName);

		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		System.out.println(saveName);

		String filePath = saveDir + "\\" + saveName;
		System.out.println(filePath);

		long fileSize = file.getSize();
		System.out.println(fileSize);

		fileUploadVo.setOrgName(orgName);
		fileUploadVo.setExName(exName);
		fileUploadVo.setSaveName(saveName);
		fileUploadVo.setFilePath(filePath);
		fileUploadVo.setFileSize(fileSize);
		
		int result = fileUploadDao.insertFile(fileUploadVo);
		
		
		try{
			
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(saveDir + "/" + saveName);
			BufferedOutputStream bout = new BufferedOutputStream(out);
			
			bout.write(fileData);
			
			if(bout != null) {
				bout.close();
			}
			
		}catch(IOException e) {
			e.printStackTrace();
			
		}
		return fileUploadVo;
	}

	public List<CategoryVo> getCateList(int userNo) {
		List<CategoryVo> cList = categoryDao.getCateList(userNo);
		return cList;
	}

	public BlogVo getBlogVo(int userNo) {
		return blogDao.selectOneBlog(userNo);
	}
}
