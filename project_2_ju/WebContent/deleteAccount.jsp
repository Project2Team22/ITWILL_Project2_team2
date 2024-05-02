<%@page import="com.project.vo.AccountVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<%
	request.setCharacterEncoding("UTF-8");

	AccountVO avo = (AccountVO) request.getAttribute("avo");
	System.out.println("avo : " + avo);
	
	request.setAttribute("avo", avo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원정보삭제</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	var check = false;
	
	function check_pwd(frm) {
		var pwd = frm.pwd.value;
		var checkPwd = frm.pwdCheck.value;
		
		if(pwd != checkPwd) {
			alert("비밀번호인증 값이 다릅니다!");
			frm.pwdCheck.value="";
			check = false;
			return false;
		}
		check = true;
		return true;
	}
	
	function deleteAccount(frm) {
		
		var criticCheck = frm.criticCheck.value;
		console.log("criticCheck : " + criticCheck);
		var id = frm.id.value;
		var checkId = frm.checkId.value;
		
		if("1" === criticCheck) {
			alert("평론가 입니다 평론가 탈퇴 후 진행해 주세요.");     
			return;
		}
		
		if(id != checkId) {
			alert("아이디가 맞지않습니다");   
			frm.id.value="";
			return;
		}
		
		if(!check) {
			alert("비밀번호인증 값이 다릅니다!");     
			frm.pwdCheck.value="";
			return;
		}
		
	    if (confirm("회원정보를 삭제 하시겠습니까?")) {
	    	
	        frm.action = "loginController?type=deleteAccountOk";
	        frm.submit();
	        
	    } else {
	    	 frm.action = "myPage.jsp";
		     frm.submit();
	    }
	}
</script>
<style type="text/css">
	table {
		border: solid black 1px;
	}
	th, td {
		border: solid black 1px;
	}
</style>
</head>
<body>
	<div id="deleteArea">
		<form method="post">
			<table>
				<caption><h2>회원정보삭제</h2></caption>
				<thead>
				    <tr>
				        <th>아이디</th>
				        <td colspan="3">
				            <input type="text" name="id" title="아이디" />
				        </td>
				    </tr>
				    <tr>
				   		<th>비밀번호</th>
					    <td colspan="3">
					       <input type="password" name="pwd" title="비밀번호" disabled value="<%=avo.getPwd() %>"/>
					    </td>
					</tr>
				    <tr>
						<th>비밀번호인증</th>
						<td colspan="3">
							<input type="password" name="pwdCheck" title="비밀번호인증" onblur="check_pwd(this.form)"/>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2">
							<input type="reset" value="초기화"/>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<input type="button" value="삭제하기" onclick="deleteAccount(this.form)"/>
							<input type="hidden" name="no" value="<%= avo.getNo()%>" />
							<input type="hidden" name="checkId" value="<%= avo.getId()%>" />
							<input type="hidden" name="criticCheck" value="<%= avo.getCriticCheck()%>" />
						</td>
					</tr>
				</tbody>
				
			</table>
		</form>
	</div>
</body>
</html>