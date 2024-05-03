<%@page import="com.project.dao.AccountDAO"%>
<%@page import="com.project.vo.AccountVO"%>
<%@page import="java.util.List"%>
<%@page import="com.mystudy.post.common.Paging"%>
<%@page import="com.mystudy.model.dao.qnaDAO"%>
<%@page import="com.mystudy.model.vo.qnaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
    session.getAttribute("no");
	int no = (int) session.getAttribute("no");    

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>평론가 취소 작성</title>
<script>
function sendData() {
    let firstForm = document.forms[0];
    firstForm.submit();
    alert("작성이 저장되었습니다!");
}

function list_go() {
        location.href = "myPage.jsp";
    }
</script>
</head>
<body>
<div>
<form action="qnaWrite_ok.jsp" method="post">
    <table>
        <tr>
            <td>
                <input type="hidden" name="no"  value="${no}">
            </td>
        </tr>
        <tr>
            <th>카테고리</th>
            <td>
                <select name="qaCategory">
   			   		<option value="평론가탈퇴">평론가탈퇴</option>
				</select>
            </td>
        </tr>
        <tr>
            <th>내용</th>
            <td>
                <textarea name="qaContent" rows="8" cols="50" title="내용"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="button" value="저장" onclick="sendData()">
                <input type="reset" value="초기화">
                <input type="button" value="마이페이지" onclick="list_go()">
            </td>
        </tr>
    </table>
</form>
</div>
</body>
</html>