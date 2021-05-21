<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%!
		String userName = null;
		String password = null;
	%>

	<%
		try {
			userName = session.getAttribute("userName").toString();
		} catch (NullPointerException e) {
			userName = null;
		}
		
		try {
			password = session.getAttribute("password").toString();
		} catch (NullPointerException e) {
			password = null;
		}
		
		if (userName == null | password == null )
			response.sendRedirect("login.jsp");
	%>

This is a secured page...Welcome ${ userName }

	<a href="videos.jsp">Videos here!</a>
	<form action="Logout">
		<input type="submit" value="Logout"></input>
	</form>
</body>
</html>