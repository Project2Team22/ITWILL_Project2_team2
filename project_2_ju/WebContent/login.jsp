<%@page import="com.project.vo.AccountVO"%>
<%@page import="java.util.List"%>
<%@page import="com.project.dao.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("UTF-8");

	//���̵�, ��� �ޱ�
	//���̵�, ��� DB���� ��ȸ
// 	String role = (String) session.getAttribute("role");
// 	String name = (String) session.getAttribute("name");
	String id = (String) session.getAttribute("id");
	if (id == "null") {
		
%>
	<script>
		alert("�α��ο� �����ϼ̽��ϴ�.");
		location.href="logout.jsp";
		
	</script>
		
<%
	} else {
		
	 	if ("ju123".equals(id)) {
	 	    // ������ ������ �ִ� ��쿡�� Ư�� ��ɿ� ������ �� �ֵ��� ó��
	 	    // ��: ������ ���� ����� �����ִ� �ڵ�
%>
			<script>
			alert("������ �α��ο� �����ϼ̽��ϴ�.");
			location.href="manage.jsp";
			</script>
<%
	 	} else {
	 	    // �Ϲ� ����� �Ǵ� �ٸ� ���ҿ� ���� ó��
	 	    // ��: �Ϲ� ����ڿ��� �����ִ� �ڵ�
	 	
	
		System.out.println("id : " + id);
// 		System.out.println("pwd : " + avo.getPwd()); 
%>
		<script>
			alert("�α��ο� �����ϼ̽��ϴ�.");
			location.href="main.jsp";
		</script>
<%
		}
	}
%>