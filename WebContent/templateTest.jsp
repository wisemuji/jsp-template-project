<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Template 페이지</title>
</head>
<body>

<%
	String contentPage = request.getParameter("CONTENTPAGE");
%>

<div>
	<jsp:include page="top.jsp" flush="false"/>
</div>
<div>
	<jsp:include page="<%= contentPage %>" flush="false"/>
</div>
<div>
	<jsp:include page="bottom.jsp" flush="false"/>
</div>


</body>
</html>