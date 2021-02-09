<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%
 String batchid=request.getParameter("id");
 String batchname=request.getParameter("bname");
 String year=request.getParameter("year");
 
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
pst=con.prepareStatement("update batch set batchname = ?, year= ? where id = ?");
pst.setString(1,batchname);
pst.setString(2,year);
pst.setString(3,batchid);
pst.executeUpdate();
//out.println("Record updated");
response.sendRedirect("batch.jsp");

 
%>

