package com.javaex.vo;

public class ReplyVo {
	private int cmtNo;	//댓글 번호
	private int postNo;	//포스트 번호
	private String cmtContent;	//댓글 내용
	private String regDate;		//작성날짜
	private String replyer;		//댓글 작성자
	
	public ReplyVo() {
	}
	public ReplyVo(int cmtNo, int postNo, String cmtContent, String regDate, String replyer) {
		super();
		this.cmtNo = cmtNo;
		this.postNo = postNo;
		this.cmtContent = cmtContent;
		this.regDate = regDate;
		this.replyer = replyer;
	}
	public int getCmtNo() {
		return cmtNo;
	}
	public void setCmtNo(int cmtNo) {
		this.cmtNo = cmtNo;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getCmtContent() {
		return cmtContent;
	}
	public void setCmtContent(String cmtContent) {
		this.cmtContent = cmtContent;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
}