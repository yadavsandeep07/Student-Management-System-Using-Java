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
        <title>Course</title>
    </head>
    <body>
       
         <%@include file="../header/admin.jsp" %>
        <h1>Course</h1>
        <div class="row">
        <div class="col-sm-4">
            <form method="post" align="left" action="add.jsp" >
                
                <div>
                    <label class="form-label">Course Name</label>
                    <input type="text" id="name" name="name" placeholder="Course Name" class="form-control" required>
                </div>
                <div>
                    <label class="form-label">Duration</label>
                    <input type="text" id="duration" name="duration" placeholder="duration" class="form-control" required>
                </div>
                <div> 
                    <input type="submit" name="submit" class="btn-info" value="submit">
                    <input type="reset" name="reset" class="btn-warning" value="reset">
                </div>
        
                    
                
            </form>
        </div>
        <div class="col-sm-8">
            <div class="panel-body">
                <table id="tb1-course" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                    <thead>
                        <tr>
                            <th>Course Name</th>
                            <th>Duration</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            Connection con;
                            PreparedStatement pst;
                            ResultSet rs;
                             Class.forName("com.mysql.jdbc.Driver");
                             con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
                             String query="select * from course";
                             Statement st=con.createStatement();
                             rs=st.executeQuery(query);
                             while(rs.next())
                             {
                                String id=rs.getString("id");
                             
                            %>
                        <tr>
                            <td><%=rs.getString("coursename")%></td>
                            <td><%=rs.getString("duration")%></td>
                            <td><a href="courseupdate.jsp?id= <%=id %>" >Edit</a></td>
                            <td><a href="coursedelete.jsp?id=<%=id %>">Delete</a></td>
                        </tr>
                        <% } %>
                    </tbody>
                    
                
                    
                </table>
            </div>
            
        </div>
    </body>
</html>
