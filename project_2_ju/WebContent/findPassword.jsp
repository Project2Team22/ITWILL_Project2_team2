<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣã��</title>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/login.css">
<script>
	function check_password(frm) {
		var password = frm.password.value;
		var checkPassword = frm.passwordCheck.value;
		
		if(password != checkPassword) {
			alert("��й�ȣ�� ��й�ȣȮ�� ���� �ٸ��ϴ�!");
			frm.passwordCheck.value="";
		}
	}
	function findPassword_Ok(frm) {
		frm.action="loginController?type=findPasswordOk";
		frm.submit();
	}
</script>
<style type="text/css">
/* 	table { */
/* 		border: solid black 1px; */
/* 	} */
/* 	th, td { */
/* 		border: solid black 1px; */
/* 	} */
</style>
</head>
<body>

<div class="body">
	
		<div class="text">
				<h2>��й�ȣ �缳��</h2>
				</div>
				<br>
				<div id="findPasswordArea">
		<form method="post">
				<hr>
			<div class="table">
			<table class="tb">
					<tr>
<!-- 						<th>���̵��Է�</th> -->
						<td colspan="2">
							<input class="psTitle" type="text" name="id" title="���̵�" placeholder="���̵�"/>
						</td>
					</tr>
				<tbody>
					<tr>
<!-- 						<th>��й�ȣ�缳��</th> -->
						<td colspan="2">
							<input class="psTitle" type="password" name="password" title="���ο��й�ȣ" placeholder="�� ��й�ȣ"/>
						</td>
					</tr>
					<tr>
<!-- 						<th>��й�ȣ�缳��Ȯ��</th> -->
						<td colspan="2">
							<input class="psTitle" type="password" name="passwordCheck" title="���ο��й�ȣȮ��"  placeholder="��й�ȣ Ȯ��"onblur="check_password(this.form)"/>
						</td>
					</tr>
					<tr>
						
						<td align="right">
							<input class="searchbtn" type="button" value="���ΰ���" onclick="javascript:location.href='main.jsp'">
							
							<input class="searchbtn" type="button" value="���̵�ã��" onclick="javascript:location.href='loginController?type=findId'">
							
							<input class="loginbtn" type="button" value="��й�ȣ ����" onclick="findPassword_Ok(this.form)"/>
						</td>
					</tr>
					<tr>
					<td>
					<input class="joinbtn" type="button" value="�α��� ����" onclick="javascript:location.href='login_page.jsp'">
					</td>
					</tr>
					<tr>
						<td align="right">
						<input class="searchbtn" type="reset" value="�ʱ�ȭ"/>
						</td>
					</tr>
			</table>
			</div>
		</form>
	</div>
</div>
	
</body>
</html>