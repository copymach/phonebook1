<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>

<%
int personId = Integer.parseInt(request.getParameter("id"));
//int personId = request.getParameter("id");

//삭제한다
new PhoneDao().ContactsRemove(personId);

//리다이렉트
response.sendRedirect("./list.jsp");
%>


<!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>삭제페이지</p>
</body>
</html>
 -->