<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/write.css">
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
	<div id="loginArea">
		<form method="post">
			<table>
				<caption><h2>�α���</h2></caption>
				<thead>
					<tr>
						<th width="40%">ID</th>
						<td width="40%" colspan="2">
							<input class="psTitle" type="text" name="id" title="���̵�">
						</td>
					</tr>
					<tr>
						<th>P/W</th>
						<td colspan="2">
							<input class="psTitle" type="password" name="pwd" title="��й�ȣ">
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
						</td>
						<td>
							<input class="searchbtn" type="button" value="ȸ������" onclick="member_join(this.form)">
							<input class="searchbtn" type="button" value="���̵�ã��" onclick="find_id(this.form)">
<!-- 							<input type="button" href="loginController?type=findPassword" value="��й�ȣã��"> -->
							<input class="searchbtn" type="button" value="��й�ȣã��" onclick="find_password(this.form)">
							<input class="reset" type="reset" value="�ʱ�ȭ">
							<input class="commitbtn" type="button" value="�α���" onclick="login(this.form)">
						</td>
					</tr>
<!-- 					<tr> -->
<!-- 						<td colspan="4"> -->
<!-- 							<input class="commitbtn" type="button" value="�α���" onclick="login(this.form)"> -->
<!-- 						</td> -->
<!-- 					</tr> -->
				</tbody>
				
			</table>
		</form>
	</div>
</div>	
	
</body>
</html>