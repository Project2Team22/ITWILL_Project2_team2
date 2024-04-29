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
<title>회원정보수정</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	var isCheckId = false;

	function checkId(frm) {
	//		var checkId = form.elements["id"];
		var checkId = frm.id.value;
		if (checkId.trim().length == 0) {
			alert("아이디를 입력해주세요!");
			return false;
		}
		$.ajax ({
			type: "POST",
			url: "ajaxLoginController",
			data: {
				action: "checkDoubleId",
				id: checkId
			},
			success : function(response){
				if(response == "true") {
					alert("이미 사용중인 아이디 입니다.");
					frm.id.value = "";
					return false;
				} else {
					alert("사용 가능한 아이디 입니다.");
					isCheckId = true;
					return true;
				}
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
						+ "jqXHR.readyState : " + jqXHR.readyState + "\n"
						+ "textStatus : " + textStatus + "\n"
						+ "errorThrown : " + errorThrown);
				return false;
			}
		});
	}
	
	function check_pwd(frm) {
		var pwd = frm.pwd.value;
		var checkPwd = frm.pwdCheck.value;
		
		if(pwd != checkPwd) {
			alert("비밀번호와 비밀번호확인 값이 다릅니다!");
			frm.pwdCheck.value="";
			return false;
		}
		return true;
	}
	
	function check_critic(frm) {
	var checkCritic = frm.elements["criticCheck"];
	if (checkCritic.checked) {
	    checkCritic.value = "1";
	} else {
	    checkCritic.value = "0";
	}
	}
	
	function update(frm) {
		
		if(!isCheckId) {
			alert("아이디 중복체크를 먼저 해주세요!");
			return;
		}
		
		frm.action="loginController?type=";
		frm.submit();
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
	<div id="FixArea">
		<form method="post">
			<table>
				<caption><h2>회원정보수정</h2></caption>
				<thead>
				    <tr>
				        <th>이름</th>
				        <td colspan="3">
				            <input type="text" name="name" title="이름" value="<%= avo.getName() %>" />
				        </td>
				    </tr>
				    <tr>
				        <th>아이디</th>
				        <td colspan="3">
				            <input type="text" name="id" title="아이디" value="<%=avo.getId() %>" />
				            <input type="button" value="아이디중복체크" onclick="checkId(this.form)"/>
				        </td>
				    </tr>
				    <tr>
				        <th>비밀번호</th>
				        <td colspan="3">
				            <input type="password" name="pwd" title="비밀번호" />
				        </td>
				    </tr>
				    <tr>
						<th>비밀번호확인</th>
						<td colspan="3">
							<input type="password" name="pwdCheck" title="비밀번호확인" onblur="check_pwd(this.form)"/>
						</td>
					</tr>
				    <tr>
				        <th>닉네임</th>
				        <td colspan="3">
				            <input type="text" name="nick" title="닉네임" value="<%= avo.getNick() %>" />
				        </td>
				    </tr>
				    <tr>
				        <th>평론가 구분</th>
				        <td colspan="3">
				            <input type="number" name="criticCheck" title="평론가구분" value="<%= avo.getCriticCheck() %>" />
				        </td>
				    </tr>
				    <tr>
				        <th>이메일</th>
				        <td colspan="3">
				            <input type="text" name="email" title="이메일" value="<%= avo.getEmail() %>" />
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
							<input type="button" value="수정하기" onclick="update(this.form)"/>
							<input type="hidden" name="mvNo" value="<%= avo.getNo()%>" />
						</td>
					</tr>
				</tbody>
				
			</table>
		</form>
	</div>
</body>
</html>