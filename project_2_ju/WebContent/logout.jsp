<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	//���� ����
	session.invalidate();

	//��Ȯ�� ���
	String cPath = request.getContextPath();
	response.sendRedirect(cPath + "/main.jsp");
%>