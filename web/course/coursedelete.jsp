<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%
 String courseid=request.getParameter("id");

 
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
pst=con.prepareStatement("delete from course where id=?");

pst.setString(1, courseid);
pst.executeUpdate();
//out.println("Record Deleted");
response.sendRedirect("course.jsp");
 
%>

