<%-- 
    Document   : home
    Created on : 24 Feb, 2020, 3:39:04 PM
    Author     : sandeep yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        
        <title>Admin</title>
    </head>
    <body>
    
	 <%@include file="header/adminhome.jsp" %>

                <div class="container">
                    <a href='course/course.jsp' class="box">
                        <img src="css/course.png" alt=""/>
                        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manage course   </h2>
                    </a>
                    <a href='batch/batch.jsp' class="box">
                        <img src="css/batch.png" alt=""/>
                        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manage Batch  </h2>
                    </a>
                    <a href='student/student.jsp' class="box">
                        <img src="css/student.png" alt=""/>
                        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manage Student   </h2>
                    </a>
          
</div>  
        
    </body>
</html>
