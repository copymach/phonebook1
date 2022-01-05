<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="java.util.List"%>
<%
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");

//전송된 값을 vo객체로 만들기
PersonVo personVo = new PersonVo(name, hp, company);

//phoneDao를 메모리에 올린다.
PhoneDao phoneDao = new PhoneDao();

//저장한다
phoneDao.ContactsInput(personVo);

//전체리스트를 가져온다
List<PersonVo> personList = phoneDao.getList();

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
	<p>저장 기능 - 입력한 정보를 저장하는 페이지</p>
</body>
</html>
 -->