
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
        <!-- <div class="row">
        <div class="col-sm-4">
            <form method="post" align="left" action="add.jsp">
                <div>
                    <label class="form-label">Student Name</label>
                    <input type="text" id="sname" name="sname" placeholder="Student Name" class="form-control" required>
                </div>
                <div>
                    <label class="form-label">Course</label>
                    <select name="course" id="course" class="form-control">
                       <% 
                        
                          Class.forName("com.mysql.jdbc.Driver");
                          con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
                          String query="select * from course";
                          Statement st=con.createStatement();
                          rs =st.executeQuery(query);
                          while(rs.next())
                          {
                              String id=rs.getString("id");
                              String coursename=rs.getString("coursename");
                              %>
                              <option value="<%=id %>"><%= coursename %></option>
                             <%       
                          }



                       %>
                        
                        
                        
                    </select>
                </div>
                 <div>
                    <label class="form-label">Batch</label>
                    <select name="batch" id="batch" class="form-control">
                        <%
                            
                          Class.forName("com.mysql.jdbc.Driver");
                          con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
                          String query1="select * from batch";
                          Statement st1=con.createStatement();
                          rs =st1.executeQuery(query1);
                          while(rs.next())
                          {
                              String id=rs.getString("id");
                              String batchname=rs.getString("batchname");
                              %>
                              <option value="<%=id %>"><%= batchname %></option>
                             <%       
                          }



                       %>
                       
                    </select>
                </div>
                <div>
                    <label class="form-label">Address</label>
                    <input type="text" id="address" name="address" placeholder="Address" class="form-control" required>
                </div>
                <div>
                    <label class="form-label">Phone</label>
                    <input type="text" id="phone" name="phone" placeholder="Phone" class="form-control" required>
                </div>
                <div> 
                    <input type="submit" name="submit" class="btn-info" value="submit">
                    <input type="reset" name="reset" class="btn-warning" value="reset">
                </div>
        
                    
                
            </form>
        </div>
        <div class="col-sm-8"> -->
            <div class="panel-body">
                <table id="tb1-course" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                    <thead>
                        <tr>
                            <th>Student Name</th>
                            <th>Course</th>
                            <th>Batch</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            
                             Class.forName("com.mysql.jdbc.Driver");
                             con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
                             String query2="select s.id,s.studentname,c.coursename,b.batchname,s.address,s.phone from student s JOIN course c ON s.course=c.id JOIN batch b ON s.batch=b.id";
                             Statement st2=con.createStatement();
                             rs=st2.executeQuery(query2);
                             while(rs.next())
                             {
                                String id=rs.getString("s.id");
                             
                            %>
                        <tr>
                            <td><%=rs.getString("s.studentname")%></td>
                            <td><%=rs.getString("c.coursename")%></td>
                            <td><%=rs.getString("b.batchname")%></td>
                            <td><%=rs.getString("s.address")%></td>
                            <td><%=rs.getString("s.phone")%></td>
                            <td><a href="studentupdate.jsp?id= <%=id %>" >Edit</a></td>
                            <td><a href="studentdelete.jsp?id=<%=id %>">Delete</a></td>
                        </tr>
                        <% } %>
                    </tbody>
                    
                
                    
                </table>
            </div>
            
        </div>
    </body>
</html>
