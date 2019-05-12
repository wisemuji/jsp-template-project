<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String str = request.getParameter("result");
	
	if (str.equals("ok")){
		out.print("<h2>새로운 주문이 성공적으로 추가되었습니다.</h2>");
	}
	else {
		out.print("<h2>주문 추가에 실패하였습니다.</h2>");
	}
	
	
%>
<meta http-equiv="refresh" content="1;url=create.jsp">