<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.getAttribute("no");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정화면</title>
<script>
function list_go() {
	location.href = "qna.jsp";
}
</script>
</head>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/write.css">
<body>
<!-- header.jspf -->
	<%@ include file="include/header.jspf"%>
	<div class="body">
<div>
<form action="qnaUpdate_ok.jsp" method="post">
	<table>
	<tr>
		<td>
			<input type="hidden" name="no" value="${no }">
		</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>
			<textarea name="qaContent" rows="8" cols="50" >${qvo.qaContent }</textarea>
		</td>
	</tr>
	<tr>
				<td class="button" colspan="2">
					<input class="commitbtn" type="submit" value="수 정" >
					<input class="reset" type="reset" value="초기화">
					<input type="hidden" name="qaNo" value="${qvo.qaNo }">
					<input class="reset" type="button" value="전체목록" onclick="list_go()">
				</td>
			</tr>
	</table>
</form>	

</div>
</div>
</body>
</html>