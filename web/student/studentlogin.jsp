<%-- 
    Document   : slogin
    Created on : 23 Feb, 2020, 8:08:19 PM
    Author     : sandeep yadav
--%>

<%@ page import="java.sql.*" %>  

<%
if(session.getAttribute("login")!=null) 
{
	response.sendRedirect("studenthome.jsp");
        
}
%>

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
	
	if(request.getParameter("btn_login")!=null)
	{
		String dbemail,dbpassword;
		
		String email,password;
		
		email=request.getParameter("txt_email");
		password=request.getParameter("txt_password");
		
		PreparedStatement pstmt=null;
		pstmt=con.prepareStatement("select * from login where email=? AND password=?");
		pstmt.setString(1,email);
		pstmt.setString(2,password);
		
		ResultSet rs=pstmt.executeQuery();
		if(rs.next())
		{
			dbemail=rs.getString("email");
			dbpassword=rs.getString("password");
			
			if(email.equals(dbemail) && password.equals(dbpassword))
			{
				session.setAttribute("login",dbemail);
				response.sendRedirect("studenthome.jsp");
			}
		}
		else
		{
			request.setAttribute("errorMsg","invalid email or password");
		}
		
		con.close();
	}
	
}
catch(Exception e)
{
	out.println(e);
}
%>

<!DOCTYPE html>
<html>

<head>

	
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/slogin.css" rel="stylesheet" type="text/css"/>
        
	<title>Login</title>

	
	
	<script>
		
		function validate()
		{
			var email = document.myform.txt_email;
			var password = document.myform.txt_password;
				
			if (email.value == null || email.value == "")
			{
				window.alert("please enter email ?");
				email.style.background = '#f08080';
				email.focus();
				return false;
			}
			if (password.value == null || password.value == "")
			{
				window.alert("please enter password ?");
				password.style.background = '#f08080'; 
				password.focus();
				return false;
			}
		}
			
	</script>
	
</head>

<body>
        
    <div class="login-box">
       
        <img src="../css/avatar.png" class="avatar">
        <h1>Student Login</h1>
  <form class="form-register" method="post" name="myform" onsubmit="return validate();">

					<p style="color:red">				   		
					<%
					if(request.getAttribute("errorMsg")!=null)
					{
						out.println(request.getAttribute("errorMsg"));
					}
					%>
					</p>
				   
				   </br>
                         <p>Username</p>
                         <input type="text" name="txt_email" id="email" placeholder="Enter Email" required>
                       
                         <p>Password</p>
                         <input type="password" name="txt_password" id="password" placeholder="Enter Password" required>
                        
			    <input type="submit" name="btn_login" value="Login">
                             <p align="center">
                          Don't have account?<a href="studentregister.jsp" style="font-family:'Play', sans-serif;" style="color:blue">&nbsp;Sign Up</a>
                          </p>
    </div>               
        </form>
</body>

</html>

