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
		
		<div id="wrapper">
			<div id="content">
				<div class="blog-content">
					<h4>Spring Camp 2016 참여기</h4>
					<p>
						스프링 캠프에서는 JVM(Java Virtual Machine) 기반 시스템의 백엔드(Back-end) 또는 서버사이드(Server-side)라고 칭하는 영역을 개발하는 애플리케이션 서버 개발에 관한 기술과 정보, 경험을 공유하는 컨퍼런스입니다.<br>
						 핵심주제로 Java와 Spring IO Platform을 다루고 있으며, 그외 Architecture나 JVM Language, Software Development Process 등 애플리케이션 서버 개발에 필요한 다양한 주제를 다루려고 노력하고 있습니다.<br>
						 우리는 같은 일을 하고, 같은 관심사를 가진 개발자들이지만 서로를 모릅니다.<br>
						 스프링 캠프라는 컨퍼런스에 찾아온 낯선 개발자들 사이에서 자신을 소개하고 이야기를 나누고 웃고 즐기며면서 어색함을 떨쳐내고 우리가 같은 분야에서 함께 일하고 있는 친구이자 동료라는 것을 인지하고 새로운 인연의 고리를 연결하고 이어갈 수 있는 순간으로 만들어가려 합니다.
					<p>
				</div>
				<ul class="blog-list">
					<c:forEach items="${pList}" var="vo">
					<li><a href="">${vo.postTitle}</a> <span>${vo.regDate}</span>	</li>
						
					</c:forEach>	
				</ul>
			</div>
		</div>

		<div id="extra">
			<div class="blog-logo">
				<img src="${pageContext.request.contextPath}/jblogupload/${url}">
			</div>
		</div>
		
		<div id="navigation">
			<h2>카테고리 </h2>
			<ul>
			<c:forEach items="${cateList}" var="vo" >
				<li><a href="">${vo.cateName}</a></li>
			
			</c:forEach>
	
			</ul>
		</div>
		
		<!--footer-->
		<c:import url="/WEB-INF/views/includes/blogfooter.jsp"></c:import> 
		
	</div>
</body>
<script type="text/javascript">
	var id = ${authUser.id}
	console.log(id);

	function getList(userNo){
		$.ajax({
			url : "${pageContext.request.contextPath }/api/bmain",		
			type : "post",
			data : {
						id : id
					},
	
			dataType : "json",
			success : function(cateMap){
				console.log(cateMap);
				for(var i=0; i<cateMap.categoryList.length;i++){
					$("#catelist").append("<li data-no='"+cateMap.categoryList[i].cateNo+"'>"+cateMap.categoryList[i].cateName+"</li>");
				}
			},
				error : function(XHR, status, error) {
				console.error(status + " : " + error);
		}
	});
	
		function fetchList(cateNo){
			$.ajax({
				url : "${pageContext.request.contextPath }/post/postlist",		
				type : "post",
				data : {
							cateNo: cateNo
						},
			
				dataType : "json",
				success : function(pList){
					$(".blog-list").empty();
					if(pList.length == 0){
						$(".blog-list").html("<li></li>");
					} else {
						for(var i=0; i<pList.length; i++){
						$(".blog-list").prepend("<li data-no='"+pList[i].postNo+"'><strong>"+pList[i].postTitle+"</strong><span>"+pList[i].regDate+"</span></li>");
							}
						}
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		};
		
		function fetchPost(postNo){
			$.ajax({
				url : "${pageContext.request.contextPath }/post/view",		
				type : "post",
				data : {
							postNo:postNo
						},
			
				dataType : "json",
				success : function(postVo){
					$(".blog-content").html(
							"<h4>"+postVo.postTitle+"</h4>"
						+   "<p>"+postVo.postContent+"</p>"
							);
					
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		};
		$("#catelist").on("click","li",function(){
			var cateNo = $(this).data("no")
			fetchList(cateNo);
			
			var postCount = postCountCk(cateNo);
			if(postCount == 0){
				defaultPost()
			}else if(postCount != 0){
				var postNo = recentPost(cateNo);
				fetchPost(postNo)
			}
			
		});
		
		$(".blog-list").on("click","li",function(){
			var postNo = $(this).data("no");
			fetchPost(postNo);
		});
		
		function defaultPost(){
			$(".blog-content").html(
					"<h4>등록된 글이 없습니다.</h4>"
				+   "<p> </p>"
					);
		}
		
		function postCountCk(cateNo){
			var postCt = 0;
			$.ajax({	
				url : "${pageContext.request.contextPath }/api/postCount",
				async : false,
				type : "post",
				data : {
							cateNo: cateNo
						},
			
				dataType : "json",
				success : function(post){
					postCt = post;
					
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
			return(postCt);
	}
		function recentPost(cateNo){
			var postNo = 0; 
			$.ajax({
				url : "${pageContext.request.contextPath }/post/recentpost",
				async : false,
				type : "post",
				data : {
							cateNo: cateNo
						},
			
				dataType : "json",
				success : function(postNum){
					postNo = postNum;
					
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
			return(postNo);
		}
}
</script>
</html>