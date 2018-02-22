<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JBlog</title>
<link rel="stylesheet" href="/jblog/assets/css/jblog.css">
</head>
<body>
	<div class="center-content">
		
		<!--header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		
		<form class="login-form" method="post" action="${pageContext.request.contextPath}/user/login">
      		<label>아이디</label> 
      		<input type="text" name="id">
      		
      		<label>패스워드</label> 
      		<input type="password" name="password">
		      	<c:choose>
		      		<c:when test="${param.result == false }">
		      			<p class="form-error"><font color = "red">로그인이 실패했습니다.<br>아이디/패스워드를 확인해주세요</font></p>
		      		</c:when>
		      		<c:otherwise>
		      			<p class="form-error"></p>
		      		</c:otherwise>
		      	</c:choose>
      		<input type="submit" value="로그인">
		</form>
		
	</div>
	<div id="dialog-message" title="" style="display:none">
  		<p></p>
	</div>
</body>
</html>