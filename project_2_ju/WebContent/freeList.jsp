<%@page import="com.mystudy.model.vo.postVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.getAttribute("listOne");
request.getAttribute("keyword");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 검색[freeList.jsp]</title>
<script>
//목록보기
function list_go() {

	location.href = "free.jsp";

}
</script>
</head>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/free.css">
<body>

	<%@ include file="include/header.jspf"%>
	<div class="body">
	<h2>자유게시판 [${keyword}]검색</h2>
<form  action="postWrite.jsp" method="get"><input class="write" type="button" value="작성하기" onclick="login_confirm(this.form)"></form>
<hr class="color">
		<div class="box">
		<div class="innerbox">
		<div class="content">
		<form action="postController?search=freeList" method="get">
			<select class="select" name="idx">
				<option value="0">제목</option>
				<option value="1">작성일</option>
			</select> 
			
			<input class="search" type="text" name="keyword" placeholder="검색어를 입력하세요."> 
			<input class="searchbtn" type="submit" value="검색"> 
			<input type="hidden" name="search" value="freeList">
	<input class="listbtn"  type="button" value="전체목록" onclick="list_go()">
			
		</form>
		</div>
		</div>
		</div>
	
	<form action="postController?search=freeList" method="get">	
	<table border>
	<c:forEach var="vo" items="${listOne }">
	<tr>
		<td width="5%">${vo.psNo }</td>
		<td width="15%">${vo.psNick }</td>
		<td width="15%">${vo.psDate }</td>
		<td>
		<a href="freeView.jsp?psNo=${vo.psNo }">
		${vo.psTitle }
		</a>
		</td>
	</tr>

	</c:forEach>
	<tfoot id="page">
	        <tr>
	        	<td colspan="4">
					<ol class="paging">
					<%--[이전]에 대한 사용여부 처리 --%>
					<c:if test="${selPvo.beginPage == 1 }">
						<li class="disable">이전</li> 
					</c:if>
					<c:if test="${selPvo.beginPage != 1 }">
						<li>
							<a href="postController?search=freeList&cPage=${selPvo.endPage - 1 }&idx=${idx }&keyword=${keyword}">이전</a>
						</li> 
					</c:if>
					
					<%--블록내에 표시할 페이지 태그 작성(시작~끝) --%>
					<c:forEach var="pageNo" begin="${selPvo.beginPage }" end="${selPvo.endPage }">
					<c:choose>
						<c:when test="${pageNo == selPvo.nowPage }">
							<li class="now">${pageNo }</li>
						</c:when>
						<c:otherwise>
							<li><a href="postController?search=freeList&cPage=${pageNo }&idx=${idx }&keyword=${keyword}">${pageNo }</a></li>
						</c:otherwise>
					</c:choose>
					</c:forEach>
						
					<%--[다음]에 대한 사용여부 처리 --%>	
					<c:if test="${selPvo.endPage < selPvo.totalPage }">
						<li>
							<a href="postController?search=freeList&cPage=${selPvo.nowPage + 1 }&idx=${idx }&keyword=${keyword}">다음</a>
						</li> 
					</c:if>
					<c:if test="${selPvo.endPage >= selPvo.totalPage }">
						<li class="disable">다음</li> 
					</c:if>
					</ol>
				</td>
	    	</tr>
	    </tfoot>

	</table>
	</form>
	</div>

</body>
</html>