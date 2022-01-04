<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
PhoneDao phoneDao = new PhoneDao();
List<PersonVo> personList =phoneDao.PersonSelect();
//List<PersonVo> personList = phoneDao.getPersonList();
//List<PersonVo> personList = new ArrayList<PersonVo>();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[PhoneBook1]</h1>
	<h1>리스트 페이지</h1>
	<h2>http://localhost:8088/phonebook1/list.jsp</h2>
	<p>입력한 정보 내역입니다.</p>

	<%
	for (int i = 0; i < personList.size(); i++) {
	%>

	<table border="1">
		<tr>
			<td>이름(name)</td>
			<td>정우성</td>
			<td><%=personList.get(i).getName()%></td>
		</tr>
		<tr>
			<td>핸드폰(hp)</td>
			<td>010-1111-9898</td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td>02-8541-2321</td>
		</tr>
	</table>
	<br>
	<%
	}
	%>
	<a href="http://localhost:8088/phonebook1/writeForm.jsp">전화번호 등록폼</a>
</body>
</html>