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

	<div id="container">
		
	<!--header -->
		<c:import url="/WEB-INF/views/includes/blogheader.jsp"></c:import>

		
		<div id="wrapper">
			<div id="content" class="full-screen">
				<!--navigation -->	
					<c:import url="/WEB-INF/views/includes/blognav.jsp"></c:import>
				<!--/navigation -->	
				
				
				<form action="${pageContext.request.contextPath }/${authUser.id}/admin/post" method="post">
			      	<table class="admin-cat-write">
			      		<tr>
			      			<td class="t">제목</td>
			      			<td>
			      				<input type="text" size="60" name="title">
				      			<select name="category">		<!--controller를 통해서 리스트 받아오기  -->
				      				<c:forEach items="${categoryList}" var="clist">
					      				<option value ="${clist.cateNo }">${clist.cateName }</option>
					      			</c:forEach>
				      			</select>
				      		</td>
			      		</tr>
			      		<tr>
			      			<td class="t">내용</td>
			      			<td><textarea name="content"></textarea></td>
			      		</tr>
			      		<tr>
			      			<td>&nbsp;</td>
			      			<td class="s"><input type="submit" value="포스트하기"></td>
			      		</tr>
			      	</table>
				</form>
			</div>
		</div>
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/blogfooter.jsp"></c:import>
		
	</div>
</body>
</html>