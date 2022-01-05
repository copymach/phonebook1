<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>

<%
PhoneDao phoneDao= new PhoneDao();

String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");
// id 는 string이어서 숫자로 쓰기 위해 형변환이 필요
int id = Integer.parseInt(request.getParameter("id"));


//전송된 값을 vo객체로 정리하기
PersonVo personVo = new PersonVo(id, name, hp, company);

//에러 탐지용 tostring
//System.out.println(personVo.toString());


//업데이트 
phoneDao.ContactsUpdate(personVo);


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
	<p>수정 기능 - 입력한 정보를 수정하는 페이지</p>
</body>
</html>
 -->