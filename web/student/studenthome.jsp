<%-- 
    Document   : studenthome
    Created on : 23 Feb, 2020, 9:22:10 PM
    Author     : sandeep yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Welcome : <%=session.getAttribute("login")%></title>
        <link href="../css/header.css" rel="stylesheet" type="text/css"/>
         
            <style>
                .box{
                    width: 1200px;
                    height: 675px;
                    padding: 20px;
                    margin: 100px auto;
                    box-shadow: 0px 0px 10px 2px grey;
                    background-image: url(../css/registration.jpg);
                    background-size : cover;
                    
                    
                }
            </style>

</head>

<body>
     <%@include file="../header/student.jsp" %>
    <div class="box">
    </div>
	
	
       
         
</body>

</html>
