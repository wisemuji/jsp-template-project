<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마법에 빠지고 싶은 밤</title>
</head>
<body>


<%
	request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		
		PrintWriter writer = null;
		String result;
		
		String filename="spells.txt";
		
		try{
			String filepath = application.getRealPath("/WEB-INF/spells/"+filename);
			BufferedWriter bw = new BufferedWriter(new FileWriter(filepath, true));
			PrintWriter pw = new PrintWriter(bw, true);
			pw.write(name + "\n");
			pw.write(content + "\n");
			
			pw.flush();
			pw.close();
			result = "ok";
		}
		catch(Exception e){
			out.println("오류 발생");
			result = "fail";
		}
		
		response.sendRedirect("createResult.jsp?result="+result);
		
%>


</body>
</html>