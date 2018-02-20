<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<div id="header">
			<h1>${blogVo.blogTitle}</h1>
			<ul>
				<c:choose>
				<c:when test="${authUser == null}">
					<!-- 로그인 전 메뉴 -->
					<li><a href="${pageContext.request.contextPath }/user/login">로그인</a></li>
				</c:when>	
				
				<c:otherwise>
					<!-- 로그인 후 메뉴 -->
					<li><a href="${pageContext.request.contextPath }/user/logout">로그아웃</a></li>
					<li><a href="${pageContext.request.contextPath }/${sessionScope.authUser.id}/admin/basic">내블로그 관리</a></li>
				</c:otherwise>
				</c:choose>
			</ul>
		</div>