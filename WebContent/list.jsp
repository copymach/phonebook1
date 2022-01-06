<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
PhoneDao phoneDao = new PhoneDao();
List<PersonVo> personList = phoneDao.getList();
//List<PersonVo> personList = phoneDao.printList();
//List<PersonVo> personList = phoneDao.PersonSelect();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[PhoneBook1]</title>
</head>
<body>
	<h1>[PhoneBook1]</h1>
	<h1>리스트 페이지</h1>
	<h2><a href=http://localhost:8088/phonebook1/list.jsp>http://localhost:8088/phonebook1/list.jsp</a></h2>
	<p>입력한 정보 내역입니다.</p>

	<%
	for (int i = 0; i < personList.size(); i++) {
	%>

	<table border="1">
		<tr>
			<td>이름(name)</td>
			<td><%=personList.get(i).getName()%></td>
		</tr>
		<tr>
			<td>핸드폰(hp)</td>
			<td><%=personList.get(i).getHp()%></td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td><%=personList.get(i).getCompany()%></td>
		</tr>
				<tr>
			<td>코드(id)</td>
			<td><%=personList.get(i).getPersonId()%></td>
		</tr>
		<tr>
			<td><a href=./modify.jsp?id=<%=personList.get(i).getPersonId()%>>수정</a></td>
			<td><a href=./delete.jsp?id=<%=personList.get(i).getPersonId()%>>삭제</a></td>
		</tr>
	</table>
	<br>
	<%
	}
	%>
	<a href="http://localhost:8088/phonebook1/writeForm.jsp">전화번호 추가하기</a>
	<!--기존 getPerson 쓰기전 수정버튼용 링크 <a href=./modify.jsp?id=  [%=personList.get(i).getPersonId()%>&name= [%=personList.get(i).getName()%>&hp= [%=personList.get(i).getHp()%>&company= [%=personList.get(i).getCompany()%>>수정</a> -->
</body>
</html>