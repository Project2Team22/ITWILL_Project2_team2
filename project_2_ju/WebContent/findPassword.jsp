<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣã��</title>
<link rel="stylesheet" href="css/write.css">
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
	<div id="findPasswordArea">
		<form method="post">
			<table>
				<caption><h2>��й�ȣ �缳��</h2></caption>
				<thead>
					<tr>
						<th>ID</th>
<!-- 						<th>���̵��Է�</th> -->
						<td colspan="3">
							<input class="psTitle" type="text" name="id" title="���̵�"/>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>NEW P/W</th>
<!-- 						<th>��й�ȣ�缳��</th> -->
						<td colspan="3">
							<input class="psTitle" type="password" name="password" title="���ο��й�ȣ"/>
						</td>
					</tr>
					<tr>
						<th>CHECK P/W</th>
<!-- 						<th>��й�ȣ�缳��Ȯ��</th> -->
						<td colspan="3">
							<input class="psTitle" type="password" name="passwordCheck" title="���ο��й�ȣȮ��" onblur="check_password(this.form)"/>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
						</td>
						<td>
							<input class="reset" type="button" value="���ΰ���" onclick="javascript:location.href='main.jsp'">
							<input class="searchbtn" type="button" value="�α��ΰ���" onclick="javascript:location.href='login_page.jsp'">
							<input class="searchbtn" type="button" value="���̵�ã��" onclick="javascript:location.href='loginController?type=findId'">
							<input class="reset" type="reset" value="�ʱ�ȭ"/>
							<input class="commitbtn" type="button" value="P/W �缳��" onclick="findPassword_Ok(this.form)"/>
						</td>
					</tr>
					<tr>
						<td colspan="4">
<!-- 							<input type="button" value="���̵�ã��" onclick="location.href='loginController?type=findIdOk'"/> -->
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</div>
	
</body>
</html>