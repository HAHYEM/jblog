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

	<div id="container">

		<!--header -->
		<c:import url="/WEB-INF/views/includes/blogheader.jsp"></c:import>
		
		<div id="wrapper">
			<div id="content">
				<div class="blog-content">
					<c:if test="${(pList[0] == null)}">
							<h4>등록된 글이 없습니다.</h4>
					</c:if>	
					<c:if test="${(pList[0] != null) && (param.pn == null)}">
							<h4>${pList[0].postTitle}</h4> <!-- 가장 최근에 포스트 한 포스트 제목 보여주기 -->
							<p>
								${pList[0].postContent} <!-- 가장 최근에 포스트 한 포스트 내용 보여주기 -->
							<p>
					</c:if>
				</div>
				<!-- 댓글 목록이 있을 경우에만 화면에 보여줌 -->
				<c:if test="${sessionScope.commentList != null}">    
       			 	<c:forEach var="comment" items="${requestScope.commentList }">
						<!-- id, regDate -->
						<td width="150">
							<div>
								${comment.id}<br>
								<font size="2" color="lightgray">${comment.regDate}</font>
							</div>
						</td>
						<!-- 본문내용 -->
						<td width="550">
							<div class="text-wrapper">
								${comment.cmtContent}<br>
							</div>
						</td>
						<!-- 버튼 -->
						<td width="100">
							<div id="reply-btn" style="text-align:center;">
								<a href="#">답변</a><br>
							<!-- 댓글 작성자만 수정, 삭제 가능하도록 -->	
							<c:if test="${comment.id == sessionScope.sessionId }">
								<a href="#">삭제</a>
							</c:if>
						</div>
					</c:forEach>
       			</c:if>
				<!-- 로그인 했을 경우에만 댓글 작성가능 -->
				<c:if test="">
				</c:if>
				
				<ul class="blog-list">
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
			<ul class="blog-category">
			<c:forEach items="${cateList}" var="vo" >
				<li data-no="${vo.cateNo}" style="cursor:pointer;">${vo.cateName}</li>
			</c:forEach>
			</ul>	
		</div>
		
		<!--footer-->
		<c:import url="/WEB-INF/views/includes/blogfooter.jsp"></c:import> 
		
	</div>
</body>
<script type="text/javascript">
	function fetchPost(postNo){
		$.ajax({
			//보낼 때 데이터 타입
			url : "${pageContext.request.contextPath }/post/view",
			type : "post",
			data : {
				postNo : postNo
			},
	
			//받을 때 데이터 타입
			dataType : "json",
			success : function(postVo) {
				console.log(postVo);
				$(".blog-content").html(
						"<h4>"+postVo.postTitle+"</h4>"
					+   "<p>"
					+	postVo.postContent
					+	"</p>"
										);
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
	
			}
		});
	};

	$(".blog-list").on("click","li",function(){
		var postNo = $(this).data("no");
		fetchPost(postNo);
	});
	
	function fetchCate(cateNo){
		$.ajax({
			//보낼 때 데이터 타입
			url : "${pageContext.request.contextPath }/category/view",
			type : "post",
			data : {
				cateNo : cateNo
			},
	
			//받을 때 데이터 타입
			dataType : "json",
			success : function(pList) {
				console.log(pList);
				for(var i=0; i<pList.length; i++){
				$(".blog-list").append(
				 "<li style='cursor:pointer;' data-no='"+pList[i].postNo+"'>"+pList[i].postTitle+"<span>"+pList[i].regDate+"</span></li>"
										);
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
	
			}
		});
	};

	$(".blog-category").on("click","li",function(){
		var cateNo = $(this).data("no");
		$(".blog-list").empty();
		fetchCate(cateNo);
	});
	</script>
</html>