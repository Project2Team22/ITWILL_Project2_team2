<%@page import="com.project.vo.AccountVO"%>
<%@page import="java.util.List"%>
<%@page import="com.project.dao.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("UTF-8");

	//���̵�, ��� �ޱ�
	//���̵�, ��� DB���� ��ȸ
	
	AccountVO avo = (AccountVO) session.getAttribute("avo");
	if (avo == null) {
		
%>
	<script>
		alert("�α��ο� �����ϼ̽��ϴ�.");
		history.back();
		
	</script>
		
<%
	} else {
	
		System.out.println("id : " + avo.getId());
		System.out.println("pwd : " + avo.getPwd());
%>
		<script>
			alert("�α��ο� �����ϼ̽��ϴ�.");
			location.href="main.jsp";
		</script>
<%
	}
%>