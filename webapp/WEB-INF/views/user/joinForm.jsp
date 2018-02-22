<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JBlog</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/jblog.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
</head>
<body>
	<div class="center-content">
		
		<!--header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

 		
		<form class="join-form" id="join-form" method="post" action="${pageContext.request.contextPath}/user/join">
			<label class="block-label" for="name">이름</label>
			<input type="text" name="userName"  value="" />
			
			<label class="block-label" for="id">아이디</label>
			<input type="text" name="id"  value="" />
			<input id="btn-checkid" type="button" value="id 중복체크">
			<img id="img-checkid" style="display: none;" src="${pageContext.request.contextPath}/assets/images/check.png">
			<p class="error-checkid">
			</p>

			<label class="block-label" for="password">패스워드</label>
			<input type="password" name="password"  value="" />

			<fieldset>
				<legend>약관동의</legend>
				<input id="agree-prov" type="checkbox" name="agreeProv" value="y">
				<label class="l-float">서비스 약관에 동의합니다.</label>
			</fieldset>

			<input type="submit" value="가입하기">

		</form>
	</div>

</body>
<script type="text/javascript">
	$("#btn-checkid").on("click", function() {
		var id = $("input[name='id']").val(); //입력한 ID를 받아오는 작업
		
		$.ajax({
			url : "${pageContext.request.contextPath}/user/idCheck",		
			type : "post",
			data : {
				id : id
				}, //여기까지가 데이터를 보낼때
			
			dataType : "json", //여기부터는 데이터를 받을때
			success : function(result) {
				console.log(result);
				if(result) {
					$(".error-checkid").html("<font color = blue>사용하실 수 있는 아이디입니다</font>");
				} else {
					$(".error-checkid").html("<font color = red>사용하실 수 없는 아이디입니다</font>");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
</script>

</html>