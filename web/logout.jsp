<%-- 
    Document   : logout
    Created on : 24 Feb, 2020, 3:03:58 PM
    Author     : sandeep yadav
--%>

<% 
session.invalidate();
response.sendRedirect("index.jsp");
%>