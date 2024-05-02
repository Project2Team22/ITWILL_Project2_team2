<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������������</title>
<style>
img.icon {
	position: absolute;
	left: 200px;
	top: 60px;
}

li {
	float: left;
	display: block;
	padding: 10px 26px;
	font-size: 18px;
}

a {
	text-decoration: none;
	color: black;
}

ul.menu {
	position: absolute;
	list-style-type: none;
	margin: 0;
	padding: 0;
	top: 60px;
	left: 530px;
}

li a:hover {
	color: #56BEC0;
	font-weight: bold;
}

hr.mint {
	background-color: #56BEC0;
	height: 3px;
	margin-top: 120px;
}

ul.login {
	position: absolute;
	list-style-type: none;
	margin: 0;
	padding: 0;
	top: 60px;
	right: 200px;
}

ul.login li {
	padding: 12px 5px;
	font-size: 14px;
}

hr.gray {
	background-color: D9D9D9;
	height: 1px;
}

#banner {
	width: 5000px;
}

#frame {
	width: 1130px;
	position: relative;
	overflow: hidden;
}

table {
/* 	position: absolute; */
	top: 50%;
	left: 50%;
  	transform: translate(250px, -10px);  
  	margin-top: -10%;
	width: 70%;
	max-height: 400px;
	overflow-y: auto;
	border-collapse: collapse;
	border: 1px solid black;
}

.body {
	position: relative;
	padding-top: 200px;
}

caption {
	margin-bottom: 50px;
}

th, td {
    border: 1px solid black; /* ���̺� ��輱 ���� */
    padding: 8px; /* �� ���� ���� ���� */
    text-align: center; /* ��� ���� */
}

thead {
/* 	position: absolute; */
/* 	top: 50%; */
/* 	left: 50%; */
/* 	transform: translate(-50%, -50%); */
/* 	width: 70%; */
 	border: 1px solid black;  
}

thead th tr td{
	display: flex;
	align-items: center;
	border: 1px solid black; 
}

thead select, thead input[type="text"], thead input[type="submit"] {
	margin-right: 10px;
}

tbody th tr td{
	border: 1px solid black; 
	
}
</style>
</script>
</head>
<body>
	<div class="header">
		<a href="main.jsp"> <img class="icon" src="img/moviechoice.png">
		</a>

		<ul class="menu">
			<li><a href="main.jsp">��ȭ��� ����</a></li>
			<li><a href="reviewMain.jsp">������� ����</a></li>
			<li><a href="free.jsp">�����Խ��� ����</a></li>
			<li><a href="about.asp">Q &amp; A ����</a></li>
			<li><a href="about.asp">Review Of The Month ����</a></li>
			<li><a href="about.asp">��а� ����</a></li>
			<li><a href="about.asp">���� ����</a></li>
		</ul>
		<hr class="mint">
	</div>
	<div class="body">
		<form method="post">
			<table>
				<caption>
					<h2>������ �˻�</h2>
				</caption>
				<thead>
					<tr>
						<td><select name="idx">
								<option selected="" disabled="">����</option>
								<option value="0">��ü</option>
								<option value="1">����</option>
								<option value="2">��ȭ</option>
								<option value="3">����</option>
						</select></td>
						<td><input type="text" name="keyword"></td>
						<td><input type="button" value="�˻�"
							onclick="selectCategory(this.form)"></td>
					</tr>
				</thead>
				<tbody id="jsonData">
					<tr>
						<th>���̺�</th>
						<th>��ȭ ��ȣ</th>
						<th>����</th>
						<th>����</th>
						<th>���</th>
						<th>�帣</th>
						<th>����</th>
						<th>������ ��</th>
						<th>���</th>
						<th>������</th>
						<th>������</th>
					</tr>
					<tr class="movie">
						<td>1</td>
						<td>��Ǫ�Ҵ�4</td>
						<td>����ũ ��ÿ, �����Ĵ� ��Ƽ��</td>
						<td>���, ��ö� ���̺�, �����ǳ�, ����ƾ ȣ���� ��</td>
						<td>�ִϸ��̼�, �׼�</td>
						<td>8</td>
						<td>925655��</td>
						<td>��ü������</td>
						<td>2024-04-10</td>
						<td>kungfu.jpg</td>
					</tr>
					<tr class="movie">
						<td>2</td>
						<td>��-��Ʈ2</td>
						<td>��� ������</td>
						<td>Ƽ��� �����, �����̾� �ݸ�, ����ī �۰Ž�, ���� ��Ѹ� ��</td>
						<td>�׼�</td>
						<td>9</td>
						<td>1969174��</td>
						<td>12���̻������</td>
						<td>2024-02-28</td>
						<td>dune.jpg</td>
					</tr>
					<tr class="movie">
						<td>3</td>
						<td>��Ʈ��������</td>
						<td>�� Ű��</td>
						<td>�� ����, ĳ�� ��, �� �����ϵ�, ���ɳ� �׷��̽� ��</td>
						<td>��庥ó, �׼�</td>
						<td>8</td>
						<td>340000��</td>
						<td>12���̻������</td>
						<td>2024-04-17</td>
						<td>ghost.jpg</td>
					</tr>
					<tr class="movie">
						<td>4</td>
						<td>�Ĺ�</td>
						<td>������</td>
						<td>�ֹν�, �����, ������, �̵��� ��</td>
						<td>�̽��͸�</td>
						<td>9</td>
						<td>11649808��</td>
						<td>15���̻������</td>
						<td>2024-02-22</td>
						<td>exhuma.jpg</td>
					</tr>
					<tr class="movie">
						<td>5</td>
						<td>������ �йи� �ڵ�</td>
						<td>īŸ�⸮ Ÿī��</td>
						<td>����ġ Ÿ���, Ÿ����Ű ������, �Ͼ߹� ����� ��</td>
						<td>�ִϸ��̼�</td>
						<td>9</td>
						<td>803500��</td>
						<td>12���̻������</td>
						<td>2024-03-20</td>
						<td>spy.jpg</td>
					</tr>
					<tr class="movie">
						<td>6</td>
						<td>�����λ�10��</td>
						<td>������ ��ġ����</td>
						<td>���� ����, ��ī��ġ ��Ÿ��, ���Ű �Ϸ�, �����ð� ��Ÿī ��</td>
						<td>�θǽ�, ���</td>
						<td>9</td>
						<td>332951��</td>
						<td>12���̻������</td>
						<td>2024-04-03</td>
						<td>last10.jpg</td>
					</tr>
					<tr class="movie">
						<td>7</td>
						<td>���� ������ ����</td>
						<td>�Ƹ�ī�� ��Ƽ�콼</td>
						<td>�� Ÿ�̰� ����, Ÿ���� �ٷ�, �ҳ� ���, ���� �̳׽� ��</td>
						<td>ȣ��</td>
						<td>8</td>
						<td>152690��</td>
						<td>15���̻������</td>
						<td>2024-04-03</td>
						<td>omen.jpg</td>
					</tr>
					<tr class="movie">
						<td>8</td>
						<td>�Ǵ� �õ� ������</td>
						<td>����� ������</td>
						<td>ȣ�� ����ġ��, �̽ô� ��Ű��, Ÿ��ī ���� ��</td>
						<td>�ִϸ��̼�</td>
						<td>8</td>
						<td>49486��</td>
						<td>12���̻������</td>
						<td>2024-04-03</td>
						<td>freedom.jpg</td>
					</tr>
					<tr class="movie">
						<td>9</td>
						<td>��ۺδ�</td>
						<td>�ȱ���</td>
						<td>�ռ���, �輺ö, �赿��, ȫ�� ��</td>
						<td>����, ���</td>
						<td>8</td>
						<td>931439��</td>
						<td>15���̻������</td>
						<td>2024-03-27</td>
						<td>troll.jpg</td>
					</tr>
					<tr class="movie">
						<td>10</td>
						<td>ĳ��</td>
						<td>��� ������</td>
						<td>����Ʈ �����, ��� ����, ī�� æ�鷯 ��</td>
						<td>���</td>
						<td>7</td>
						<td>355371��</td>
						<td>û�ҳ�����Ұ�</td>
						<td>2024-04-17</td>
						<td>carol.jpg</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>


</body>
</html>