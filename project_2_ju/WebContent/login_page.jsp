<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/login.css">
<script>
	function member_join(frm) {
		frm.action="loginController?type=memberJoin";
		frm.submit();
	}
	function login(frm) {
		frm.action="loginController?type=login";
		frm.submit();
	}
	function find_id(frm) {
		frm.action="loginController?type=findId";
		frm.submit();
	}
	function find_password(frm) {
		frm.action="loginController?type=findPassword";
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

	<img class= "icon" src="img/moviechoice.png">
	<br>
	<div class="loginArea">
		<form method="post">
	<hr>
	<div class="table">
			<table  class="tb">

					<tr>
<!-- 						<th width="40%">ID</th> -->
						<td width="40%" colspan="2">
							<input class="psTitle" type="text" name="id" title="���̵�" placeholder="���̵�">
						</td>
					</tr>
					<tr>
<!-- 						<th>P/W</th> -->
						<td colspan="2">
							<input class="psTitle" type="password" name="pwd" title="��й�ȣ"  placeholder="��й�ȣ">
						</td>
					</tr>
				
				<tr>
				<td align="right">
							<input class="searchbtn" type="button" value="���̵�ã��" onclick="find_id(this.form)">
							<input class="searchbtn" type="button" value="��й�ȣã��" onclick="find_password(this.form)">
					</td>
					</tr>
					<tr>
						<td>
						
						<input class="loginbtn" type="button" value="�α���" onclick="login(this.form)">
						</td>
					</tr>
						<tr>
						<td>
							<input class="joinbtn" type="button" value="ȸ������" onclick="member_join(this.form)">
<!-- 							<input type="button" href="loginController?type=findPassword" value="��й�ȣã��"> -->
							</td>
							</tr>
							<tr>
							<td align="right">
								<input class="searchbtn" class="reset" type="reset" value="�ʱ�ȭ">
							</td>
							</tr>
						</table>	
					</div>	
<!-- 					<tr> -->
<!-- 						<td colspan="4"> -->
<!-- 							<input class="commitbtn" type="button" value="�α���" onclick="login(this.form)"> -->
<!-- 						</td> -->
<!-- 					</tr> -->
				
		</form>
	</div>
</div>	
	
</body>
</html>