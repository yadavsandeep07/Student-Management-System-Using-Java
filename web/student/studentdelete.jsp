<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%
 String studentid=request.getParameter("id");

 
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
pst=con.prepareStatement("delete from student where id=?");

pst.setString(1, studentid);
pst.executeUpdate();
//out.println("Record Deleted");
response.sendRedirect("student.jsp");

 
%>

