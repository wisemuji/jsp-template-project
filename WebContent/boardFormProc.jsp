<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>글쓰기</h2>

<form action=boardProc1.jsp method="POST">
이름 : <input type="text" name="name"><br>
제목 : <input type="text" name="title"><br>
<textarea rows=10 cols=40 name="content"></textarea>
<input type="submit" value="작성">


</form>


</body>
</html>