<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<ul class="admin-menu">
		<li><a href="${pageContext.request.contextPath}/${sessionScope.authUser.id}">기본설정</a></li>
		<li><a href="${pageContext.request.contextPath}/${sessionScope.authUser.id}/admin/cate">카테고리</a></li>
		<li><a href="${pageContext.request.contextPath}/${sessionScope.authUser.id}/admin/write">글작성</a></li>
	</ul>