<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	int mvNo = Integer.parseInt(request.getParameter("mvNo"));
	System.out.println("mvNo : " + mvNo);
	
	request.setAttribute("mvNo", mvNo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ȭ��������</title>
<script>
	function update(frm) {
		frm.action="controller?type=movieFixOk";
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
				<caption><h2>��ȭ��������</h2></caption>
				<thead>
					<tr>
						<th>��ȭ�̸�</th>
						<td colspan="3">
							<input type="text" name="mvTitle" title="��ȭ�̸�" />
						</td>
					</tr>
					<tr>
						<th>��ȭ����</th>
						<td colspan="3">
							<input type="text" name="mvDirect" title="��ȭ����" />
						</td>
					</tr>
					<tr>
						<th>��ȭ�⿬��</th>
						<td colspan="3">
							<input type="text" name="mvActor" title="��ȭ�⿬��" />
						</td>
					</tr>
					<tr>
						<th>��ȭ�帣</th>
						<td colspan="3">
							<input type="text" name="mvGenre" title="��ȭ�帣" />
						</td>
					</tr>
					<tr>
						<th>��ȭ����</th>
						<td colspan="3">
							<input type="text" name="mvRate" title="��ȭ����" />
						</td>
					</tr>
					<tr>
						<th>��ȭ�����⵵</th>
						<td colspan="3">
							<input type="text" name="mvDate" title="��ȭ�����⵵" />
						</td>
					</tr>
					<tr>
						<th>��ȭ��������</th>
						<td colspan="3">
							<input type="number" name="mvAudience" title="��ȭ�⿬" />
						</td>
					</tr>
					<tr>
						<th>��ȭ���</th>
						<td colspan="3">
							<input type="text" name="mvGrade" title="��ȭ���" />
						</td>
					</tr>
					<tr>
						<th>��ȭ������</th>
						<td colspan="3">
							<input type="text" name="mvPoster" title="��ȭ������" />
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2">
							<input type="reset" value="�ʱ�ȭ"/>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<input type="button" value="�����ϱ�" onclick="update(this.form)"/>
							<input type="hidden" name="mvNo" value="<%= mvNo %>" />
						</td>
					</tr>
				</tbody>
				
			</table>
		</form>
	</div>
</body>
</html>