<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<img src="image/image05.jpg" width="400" height="250"> <br>
<%
	BufferedReader reader = null;
	try{ //internet관련 작업을 할때는 exception 처리를 반드시 해야 한다.
		String filePath = application.getRealPath("/WEB-INF/little.txt");
		//out.print(filePath);
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			out.println(str + "<br>");
		}
	}
	catch(Exception e){
		
	}
	finally{ //안써도 에러는 안나지만 꼭 close해줘야함
		//reader.close();
	}
%>

</center>



</body>
</html>