<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%
 String batchname=request.getParameter("bname");
 String year=request.getParameter("year");
 
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
pst=con.prepareStatement("insert into batch(batchname,year)values(?,?)");
pst.setString(1,batchname);
pst.setString(2,year);
pst.executeUpdate();
//out.println("Record Addedd");
response.sendRedirect("batch.jsp");

 
%>

