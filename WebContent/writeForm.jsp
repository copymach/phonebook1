<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[Phonebook1]</h1>
	<h2>전화번호 등록폼</h2>
	<p>전화번호를 등록하려면 아래 항목을 기입하고 등록 버튼을 누르세요</p>

	<form action="./insert.jsp" method="get">
		<!-- get방식으로 하면 파라미터가 보임 post방식으로 하면 안보임 -->
		이름(name) : <input type="text" name="name" value=""> <br>
		핸드폰(hp) : <input type="text" name="hp" value=""> <br>
		회사(company) <input type="text" name="company" value=""> <br>
		<button type="submit">전송</button>
	</form>
	
	<a href="http://localhost:8088/phonebook1/list.jsp">리스트 (절대경로)</a>
	<a href="./list.jsp">리스트로 돌아가기</a>
</body>
</html>