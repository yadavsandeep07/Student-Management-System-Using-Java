<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%
 String coursename=request.getParameter("name");
 String duration=request.getParameter("duration");
 
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
pst=con.prepareStatement("insert into course(coursename,duration)values(?,?)");
pst.setString(1,coursename);
pst.setString(2,duration);
pst.executeUpdate();
//out.println("Record Addedd");

response.sendRedirect("course.jsp");
%>

