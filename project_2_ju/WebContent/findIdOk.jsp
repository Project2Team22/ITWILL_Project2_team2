<%@page import="com.project.dao.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    request.setCharacterEncoding("UTF-8");

    String id = (String) request.getAttribute("id");
    System.out.println("id : " + id);
    if (id == null) {
%>
    <script>
        alert("ȸ�����Ե� �̸����� �����ϴ�.");
        history.back();
    </script>
<%
    } else {
%>
    <script>
        alert("���̵�� <%= id %> �Դϴ�.");
        location.href="login_page.jsp"; //���Ŀ� ù��������Ʈ�ѷ� 
    </script>
<%
    }
%>
