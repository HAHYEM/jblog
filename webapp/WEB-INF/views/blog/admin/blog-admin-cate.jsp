<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
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
				
		      	<table class="admin-cat" id="cateListArea">
		      		<tr id="plusCateListArea">
		      			<th>번호</th>
		      			<th>카테고리명</th>
		      			<th>포스트 수</th>
		      			<th>설명</th>
		      			<th>삭제</th>      			
		      		</tr>
				</table>
      	
      			<h4 class="n-c">새로운 카테고리 추가</h4>
		      	<table id="admin-cat-add">
		      		<tr>
		      			<td class="t">카테고리명</td>
		      			<td><input type="text" name="name"></td>
		      		</tr>
		      		<tr>
		      			<td class="t">설명</td>
		      			<td><input type="text" name="desc"></td>
		      		</tr>
		      		<tr>
		      			<td class="s">&nbsp;</td>
		      			<td><input type="submit" id="btnPlus" value="카테고리 추가"></td>
		      		</tr>      		      		
		      	</table> 
			</div>
		</div>

		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/blogfooter.jsp"></c:import>
		
	</div>
</body>

<script type="text/javascript">
	var userNo = ${authUser.userNo}
	console.log(userNo);
	getList(userNo);

	function getList(userNo){
		$.ajax({
			url : "${pageContext.request.contextPath }/api/getcate",		
			type : "post",
			data : {userNo: userNo},
	
			dataType : "json",
			success : function(cateList){
				console.log(cateList);
				for(var i=0; i<cateList.length;i++){
				render(cateList[i],"down");
				}
			},
				error : function(XHR, status, error) {
				console.error(status + " : " + error);
		}
	});
}
	//카테고리 추가하는 버튼 클릭 시	
	$("#btnPlus").on("click", function(){
		var categoryVo = {
				userNo : userNo,
				cateName : $("input[name = 'name']").val(),
				description : $("input[name = 'desc']").val()
		}
		
		$.ajax({
			//보낼 때 데이터 타입
			url : "${pageContext.request.contextPath }/api/addcate",		
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(categoryVo),
			
			//받을 때 데이터 타입
			dataType : "json",
			success : function(categoryVo){
				render(categoryVo, "after");
				$("input[name='name']").val("");
				$("input[name='desc']").val("");
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		$("[name=name]").val("");
		$("[name=desc]").val("");	
	}); 
	
		function render(categoryVo, updown) {

			var str = "";
			str += "<tr id = 'ctgr"+categoryVo.cateNo+"'>"
			str += "	<td class = 'cateNo'>"+categoryVo.cateNo+"</td>"
			str += "	<td>" + categoryVo.cateName + "</td>";
			str += "	<td>" + categoryVo.postCount + "</td>";
			str += "	<td>" + categoryVo.description + "</td>";
			str += "	<td><img class='btnCateDel' data-no='"+categoryVo.cateNo+"' src='${pageContext.request.contextPath}/assets/images/delete.jpg'></td>";
			str += "</tr>";

			if (updown == "up") {
				$("#cateListArea").prepend(str);
			} else if (updown == "down") {
				$("#cateListArea").append(str);
			} else if (updown == "after") {
				$("#plusCateListArea").after(str);
			}else {
				console.log("updown 오류");
			}
		};
		//삭제버튼 눌렀을 때 
		$("#cateListArea").on("click", ".btnCateDel", function(){
			
			var cateNo = $(this).data("no")
			console.log(cateNo);
 			$.ajax({
				//보낼 때 데이터 타입
				url : "${pageContext.request.contextPath }/api/deletecate",		
				type : "post",
				data : {
					cateNo : cateNo
					},
				
				//받을 때 데이터 타입
				dataType : "json",
				success : function(result){
					if(result){
						console.log("제거했음");
						$("#ctgr"+cateNo).remove();
					}else{
						alert('삭제할 수 없음');
						console.log("제거실패");
							}
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			}); 
		}); 

</script>
</html>