package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.FileUploadVo;
@Repository
public class FileUploadDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insertFile(FileUploadVo fileUploadVo) {
		return sqlSession.insert("fileupload.insertFileUpload", fileUploadVo);
	}

}
