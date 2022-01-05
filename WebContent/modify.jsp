<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");
String id = request.getParameter("id");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[Phonebook1]</h1>
	<h2>전화번호 수정폼</h2>
	<p>http://localhost:8088/phonebook1/writeForm.jsp</p>
	<p>전화번호를 수정하려면 아래 항목을 기입하고 등록 버튼을 누르세요</p>

	<form action="./update.jsp" method="get">
		이름(name) : <input type="text" name="name" value="<%=name%>"
			> <br> 
			핸드폰(hp) : <input
			type="text" name="hp" value="<%=hp%>"> <br>
		회사(company) <input type="text" name="company" value="<%=company%>"
			> <br> 저장ID <input type="text" name="id" value="<%=id%>"
			> 
			
		<br> 
		<button type="submit">수정</button>
	</form>
	<a href="http://localhost:8088/phonebook1/list.jsp">전화번호 등록폼</a>
	<a href="./list.jsp">전화번호 등록폼</a>
</body>
</html>