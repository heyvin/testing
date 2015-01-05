<%@ page import="java.io.*, java.util.*" %>

<html>
<head>
	<title>Hits Counter</title>
</head>
<body>
	<%
	Integer hitsCount = (Integer)application.getAttribute("hitCounter");
	if (hitsCount == null || hitsCount == 0) { //first visit
		out.println("Welcome to the website.");
		hitsCount = 1;
	} else { //return visit
		out.println("Welcome back to our website.");
		hitsCount++;
	}
	application.setAttribute("hitCounter", hitsCount);
	%>
	
	<p>Total visits: <%= application.getAttribute("hitCounter") %></p>
</body>
</html>