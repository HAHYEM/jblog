<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JBlog</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/jblog.css">
</head>
<body>

	<div id="container">
		
		<!--header -->	
		<c:import url="/WEB-INF/views/includes/blogheader.jsp"></c:import>
		<!--/header -->	
		
		<div id="wrapper">
			<div id="content" class="full-screen">
				<!--navigation -->	
					<c:import url="/WEB-INF/views/includes/blognav.jsp"></c:import>
				<!--/navigation -->	
				
				<form action="${pageContext.request.contextPath}/${sessionScope.authUser.id}/admin/uploadInfo" method="post" encType="multipart/form-data"">
	 		      	<table class="admin-config">
			      		<tr>
			      			<td class="t">블로그 제목</td>
			      			<td><input type="text" size="40" name="title" value="${blogVo.blogTitle}"></td>
			      		</tr>
			      		<tr>
			      			<td class="t">로고이미지</td>
			      			<td><img src="${pageContext.request.contextPath}/jblogupload/${url}"></td>      			
			      		</tr>      		
			      		<tr>
			      			<td class="t">&nbsp;</td>
			      			<td><input type="file" name="logo-file"></td>      			
			      		</tr>           		
			      		<tr>	
			      			<td class="t">&nbsp;</td>
			      			<td class="s"><input type="submit" value="기본설정 변경"></td>      			
			      		</tr>   
			      	</table>
			      	<input type ="hidden" value="${authUser.userNo }" name ="userNo">     
				</form>
			</div>
		</div>
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/blogfooter.jsp"></c:import>
	
	</div>
</body>
</html>