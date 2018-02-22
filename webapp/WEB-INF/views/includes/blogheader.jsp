<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<div id="header">
			<c:choose>
					<c:when test="${authUser == null}">
						<h1>누구세요? 로그인하면 보여드릴게요.</h1>
					</c:when>	
					
					<c:otherwise>
						<h1><a href="${pageContext.request.contextPath}/${sessionScope.authUser.id}">${blogVo.blogTitle}</a></h1>
					</c:otherwise>
				</c:choose>
			
			<ul>
				<c:choose>
					<c:when test="${authUser == null}">
						<!-- 로그인 전 메뉴 -->
						<li><a href="${pageContext.request.contextPath }/user/login">로그인</a></li>
					</c:when>	
					
					<c:when test="${authUser != null && authUser.id == id}">
						<!-- 로그인 후 메뉴 -->
						<li><a href="${pageContext.request.contextPath }/user/logout">로그아웃</a></li>
						<li><a href="${pageContext.request.contextPath }/${sessionScope.authUser.id}/admin/basic">내블로그 관리</a></li>
					</c:when>	
					
					<c:otherwise>
						<!-- 블로그 주인은 아니지만 로그인 후 메뉴 -->
						<li><a href="${pageContext.request.contextPath }/user/logout">로그아웃</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>