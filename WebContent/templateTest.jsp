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

<table width="800" border="1" cellpadding="2" cellspacing="0">
	<tr>
		<td colspan=2>
			<jsp:include page="top.jsp" flush="false"/>
		</td>
	</tr>
	<tr>
		<td colspan=2>
			<jsp:include page="<%= contentPage %>" flush="false"/>
		</td>
	</tr>
	<tr>
		<td colspan=2>
			<jsp:include page="bottom.jsp" flush="false"/>
		</td>
	</tr>

</table>


</body>
</html>