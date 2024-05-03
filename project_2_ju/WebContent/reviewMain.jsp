<%@page import="com.mystudy.model.dao.recDAO"%>
<%@page import="com.mystudy.model.dao.listTotDAO"%>
<%@page import="com.mystudy.model.vo.listTotVO"%>
<%@page import="com.project.review.paging.Paging"%>
<%@page import="com.mystudy.model.dao.reviewDAO"%>
<%@page import="com.project.mybatis.DBService"%>
<%@page import="com.mystudy.model.dao.movieDAO"%>
<%@page import="com.mystudy.model.vo.movieVO"%>
<%@page import="com.mystudy.model.vo.reviewVO"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 메인</title>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/free.css">

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	
<script>
	//로그인 후 작성가능
	function login_confirm(frm) {
		<%if (session.getAttribute("no") == null) {%>
			alert("로그인 후 작성 가능합니다.");
			frm.location.href = "reviewController?category=rvMain";
		<%} else%>
			frm.submit();
	}
	
</script>

</head>
<body>
	<!-- header.jspf -->
	<%@ include file="include/header.jspf" %>
	<div class="body">
	<h2>리뷰모음</h2>
	<form action="reviewController?category=rvWrite" method="post">
		<input class="write" type="button" value="등록하기" 
			onclick="login_confirm(this.form)">

		<input type="button" value="전체조회"
			onclick="javascript:location.href='reviewController?category=rvMain'">
	</h2>

	</form>
	<hr class="color">
	<div class="box">
		<div class="innerbox">
		<div class="content">
<!-- 	<h3>전체조회</h3> -->
	<!-- 리뷰 목록 검색 -->	
	<form action="reviewController?category=selectOne" method="post">
		<select class="select"  name="idx">
			<option selected disabled>::선택</option>
			<option value="0">영화명</option>
			<option value="1">작성자</option>
			<option value="2">작성일</option>
		</select>

		<input class="search" type="text" name="keyword" placeholder="작성일 ex: 20240507">
		<input class="searchbtn" type="submit" value="검색">

		
		<input type="hidden" name="category" value="selectOne">
	</form>
	</div>
		</div>
		</div>
	 
<!-- 리뷰 (전체)목록 -->
<form>
	<table class="rv">
	<c:forEach var="vo" items="${listAll}">
		<tbody id="reviewOne">
	        <tr>
	        	<td rowspan="2">${vo.rvNo }</td>
	            <td>${vo.mvTitle }</td>
	            <td id="rvTitle"><a href="rvDetail.jsp?rvNo=${vo.rvNo }&cPage=${rvPvo.nowPage}">${vo.rvTitle }</a></td>
	        </tr>
	        <tr>
	            <td>${vo.rvNick }</td>
	            <td>${vo.rvDate }</td>
	        </tr>
	        <tr>
	            <td rowspan="2" colspan="3">
	            	<input type="button" value="추천">${vo.rvRec}
	            	<input type="button" value="신고">${vo.rvWarn}
	            	<hr>
	            	<input type="hidden" name ="rvNo" value="${vo.rvNo }">
	            	<input type="hidden" name ="mvNo" value="${vo.mvNo }">
	            	<input type="hidden" name ="vo" value="${vo }">
	            	<input type="hidden" name ="recNo" value="${vo.no }">
	            </td>
	        </tr>
	    </tbody>

	</c:forEach>

	
	    <tfoot id="page">
	        <tr>
	        	<td colspan="3">
					<ol class="paging">
					<%--[이전]에 대한 사용여부 처리 --%>
					<c:if test="${rvPvo.nowPage == 1 }">
						<li class="disable">이전</li> 
					</c:if>
					<c:if test="${rvPvo.nowPage != 1 }">
						<li>
							<a href="reviewController?category=rvMain&cPage=${rvPvo.endPage - 1 }">이전</a>
						</li> 
					</c:if>
					
					<%--블록내에 표시할 페이지 태그 작성(시작~끝) --%>
					<c:forEach var="pageNo" begin="${rvPvo.beginPage }" end="${rvPvo.endPage }">
					<c:choose>
						<c:when test="${pageNo == rvPvo.nowPage }">
							<li class="now">${pageNo }</li>
						</c:when>
						<c:otherwise>
							<li><a href="reviewController?category=rvMain&cPage=${pageNo }">${pageNo }</a></li>
						</c:otherwise>
					</c:choose>
					</c:forEach>
						
					<%--[다음]에 대한 사용여부 처리 --%>	
					<c:if test="${rvPvo.nowPage < rvPvo.totalPage }">
						<li>
							<a href="reviewController?category=rvMain&cPage=${rvPvo.nowPage + 1 }">다음</a>
						</li> 
					</c:if>
					<c:if test="${rvPvo.nowPage >= rvPvo.totalPage }">
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

