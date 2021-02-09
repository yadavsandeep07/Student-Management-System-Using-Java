
<%-- 
    Document   : course
    Created on : 18 Feb, 2020, 7:09:52 PM
    Author     : sandeep yadav
--%>
<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   Connection con;
   PreparedStatement pst;
   ResultSet rs;   
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-4.4.1-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/header.css" rel="stylesheet" type="text/css"/>
        <title>Batch</title>
    </head>
    <body>
      <%@include file="../header/admin.jsp" %>
        <h1>Student Registration</h1>
        <div class="row">
        <div class="col-sm-4">
            <form method="POST" align="left" action="studentdata.jsp">
            
                <%
                     
                       Class.forName("com.mysql.jdbc.Driver");
                       con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
                       
                       String id=request.getParameter("id");
                       pst=con.prepareStatement("select * from student where id=?");
                       pst.setString(1, id);
                       rs=pst.executeQuery();
                       while(rs.next())
                       {
                %>
                <div>
                    <label class="form-label">Student Id</label>
                    <input type="text" id="id" name="id" placeholder="Student Id" class="form-control" value="<%= rs.getString("id") %>" required>
                </div>
                <div>
                    <label class="form-label">Student Name</label>
                    <input type="text" id="sname" name="sname" placeholder="Student Name" class="form-control" value="<%= rs.getString("studentname") %>" required>
                </div>
                <div>
                    <label class="form-label">Course</label>
                    
                     <input type="text" id="course" name="course" placeholder="course" class="form-control" value="<%= rs.getString("course") %>" required>  
                </div>
                       
                 <div>
                    <label class="form-label">Batch</label>
                    <input type="text" id="sname" name="batch" placeholder="batch" class="form-control" value="<%= rs.getString("batch") %>" required>
                    
                </div>
                <div>
                    <label class="form-label">Address</label>
                    <input type="text" id="address" name="address" placeholder="Address" class="form-control" value="<%= rs.getString("address") %>" required>
                </div>
                <div>
                    <label class="form-label">Phone</label>
                    <input type="text" id="phone" name="phone" placeholder="Phone" class="form-control" value="<%= rs.getString("phone") %>" required>
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
