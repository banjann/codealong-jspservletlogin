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
	
	if (userName == null | password == null)
		response.sendRedirect("login.jsp");
	
	%>

	<iframe width="560" height="315" src="https://www.youtube.com/embed/RWTPz28idx0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

</body>
</html>