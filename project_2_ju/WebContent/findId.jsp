<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���̵�ã��</title>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/login.css">
<script>
	function findId_Ok(frm) {
		frm.action="loginController?type=findIdOk";
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
		<h2>���̵�ã��</h2>
	</div>
	<br>
	<div id="loginArea">
		<form method="post">
		<hr>
		<div class="table">
			<table class="tb" >
					<tr>
						<td colspan="2" >
							<input class="psTitle" type="text" name="email" title="�̸���"  placeholder="�̸����� �Է��ϼ���"/>
						</td>
						</tr>
						<tr>
						<td>
							<input class="loginbtn" type="button" value="���̵�ã��" onclick="findId_Ok(this.form)"/>
<!-- 							<input type="button" value="���̵�ã��" onclick="location.href='loginController?type=findIdOk'"/> -->
						</td>
					</tr>
			</table>
			</div>
		</form>
	</div>
	
</div>
	
</body>
</html>