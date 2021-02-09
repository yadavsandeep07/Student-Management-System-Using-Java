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
        <h1>Batch</h1>
        <div class="row">
        <div class="col-sm-4">
            <form method="post" align="left" action="batchdata.jsp">
                <%
                       Connection con;
                       PreparedStatement pst;
                       ResultSet rs;
                       Class.forName("com.mysql.jdbc.Driver");
                       con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
                       
                       String id=request.getParameter("id");
                       pst=con.prepareStatement("select * from batch where id=?");
                       pst.setString(1, id);
                       rs=pst.executeQuery();
                       while(rs.next())
                       {
                           
                       

                %>
                
                
                
                <div>
                    <label class="form-label">Batch ID</label>
                    <input type="text" id="id" name="id" placeholder="Batch ID" class="form-control" value="<%= rs.getString("id") %>" required>
                </div>
                <div>
                    <label class="form-label">Batch Name</label>
                    <input type="text" id="bname" name="bname" placeholder="Batch Name" class="form-control" value="<%= rs.getString("batchname") %>" required>
                </div>
                <div>
                    <label class="form-label">Year</label>
                    <input type="text" id="year" name="year" placeholder="year" class="form-control" value="<%= rs.getString("year") %>" required>
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