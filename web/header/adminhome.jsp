<%-- 
    Document   : newjsp
    Created on : 27 Feb, 2020, 7:40:24 PM
    Author     : sandeep yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
           <%
	if(session.getAttribute("login")==null || session.getAttribute("login")==" ")
	{
		response.sendRedirect("index.jsp"); 
	}
	%>
	
          <header class="header-login-signup">

	<div class="header-limiter">

		<h1><a href="#"> Welcome <%=session.getAttribute("login")%></a></h1>

		<nav>
			<a href="index.jsp">Home</a>
			<a href="aboutus.jsp">About us</a>
		</nav>

		<ul>
			
			<li><a href="logout.jsp">Logout</a></li>
		</ul>

	</div>

</header>




<div class="menu">


	
	
</div>
               
         
    </body>
</html>
