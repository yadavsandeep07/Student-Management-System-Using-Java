<%-- 
    Document   : course
    Created on : 18 Feb, 2020, 7:09:52 PM
    Author     : sandeep yadav
--%>
<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-4.4.1-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/header.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
       <%@include file="../header/admin.jsp" %>
        <h1>Course</h1>
        <div class="row">
        <div class="col-sm-4">
            <form method="post" align="left" action="coursedata.jsp">
                <%
                       Connection con;
                       PreparedStatement pst;
                       ResultSet rs;
                       Class.forName("com.mysql.jdbc.Driver");
                       con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
                       
                       String id=request.getParameter("id");
                       pst=con.prepareStatement("select * from course where id=?");
                       pst.setString(1, id);
                       rs=pst.executeQuery();
                       while(rs.next())
                       {
                           
                       

                %>
                
                
                
                <div>
                    <label class="form-label">Course ID</label>
                    <input type="text" id="id" name="id" placeholder="Course ID" class="form-control" value="<%= rs.getString("id") %>" required>
                </div>
                <div>
                    <label class="form-label">Course Name</label>
                    <input type="text" id="name" name="name" placeholder="Course Name" class="form-control" value="<%= rs.getString("coursename") %>" required>
                </div>
                <div>
                    <label class="form-label">Duration</label>
                    <input type="text" id="duration" name="duration" placeholder="duration" class="form-control" value="<%= rs.getString("duration") %>" required>
                </div>
                <div> 
                    <input type="submit" name="submit" class="btn-info" value="submit">
                    <input type="reset" name="reset" class="btn-warning" value="reset">
                </div>
        
                    
              <% } %>   
            </form>
        </div>
        <div class="col-sm-8">
            </div>
            
        </div>
    </body>
</html>
-