<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%
 String studentid=request.getParameter("id");   
 String studentname=request.getParameter("sname");
 String course=request.getParameter("course");
 String batch=request.getParameter("batch");
 String address=request.getParameter("address");
 String phone=request.getParameter("phone");
 
 
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
pst=con.prepareStatement("update student set studentname = ?, course= ?,batch=?,address=?,phone=? where id = ?");
pst.setString(1,studentname);
pst.setString(2,course);
pst.setString(3,batch);
pst.setString(4,address);
pst.setString(5, phone);
pst.setString(6, studentid);
pst.executeUpdate();
//out.println("Record updated");
response.sendRedirect("student.jsp");

 
%>

