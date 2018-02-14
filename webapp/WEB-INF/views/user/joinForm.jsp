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
			<div id="checkMessage"></div>
			<img id="img-checkid" style="display: none;" src="${pageContext.request.contextPath}/assets/images/check.png">
			<p class="form-error">
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
	$("#btn-checkid").on("click",function(){
		id = $("[name=id]").val();
		/* 
		var userVo = {
				id : id
		}
		 */
 		$.ajax({
			//보낼 때 데이터 타입
			url : "${pageContext.request.contextPath }/user/api/idCheck",		
			type : "post",
		/* 	contentType : "application/json",
			data : JSON.stringify(userVo),
			 */
			data : {
				 id : id
			},
			
			//받을 때 데이터 타입
			dataType : "json",
			success : function(result){
				console.log(result);
				if(result == true){
					$("#checkMessage").text("사용할 수 있는 이메일입니다.")
					$("#checkMessage").css("color", "blue");
				}else{
					$("#checkMessage").text("사용중인 이메일입니다.")
					$("#checkMessage").css("color", "red");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		}); 
	});

</script>
</html>