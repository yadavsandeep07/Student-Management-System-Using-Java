<%-- 
    Document   : studentregister
    Created on : 23 Feb, 2020, 8:09:00 PM
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
	
	if(request.getParameter("btn_register")!=null)
	{
		String firstname,lastname,email,password;
		
		firstname=request.getParameter("txt_firstname");
		lastname=request.getParameter("txt_lastname"); 
		email=request.getParameter("txt_email"); 
		password=request.getParameter("txt_password"); 
		
		PreparedStatement pstmt=null;
		
		pstmt=con.prepareStatement("insert into login(firstname,lastname,email,password) values(?,?,?,?)"); 
		pstmt.setString(1,firstname);
		pstmt.setString(2,lastname);
		pstmt.setString(3,email);
		pstmt.setString(4,password);
		
		pstmt.executeUpdate();
		
		request.setAttribute("successMsg","Register Successfully...! Please login");
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

	
	<title>Register</title>
        <link href="../css/register.css" rel="stylesheet" type="text/css"/>

	<script>	
	
		function validate()
		{
			var first_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
			var last_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
			var email_valid= /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/;
			var password_valid=/^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/;
			
			var fname = document.getElementById("fname"); 
            var lname = document.getElementById("lname");
            var email = document.getElementById("email");
            var password = document.getElementById("password");
			
			if(!first_name.test(fname.value) || fname.value=='') 
            {
				alert("Enter Firstname Alphabet Only....!");
                fname.focus();
                fname.style.background = '#f08080';
                return false;                    
            }
			if(!last_name.test(lname.value) || lname.value=='') 
            {
				alert("Enter Lastname Alphabet Only....!");
                lname.focus();
                lname.style.background = '#f08080';
                return false;                    
            }
			if(!email_valid.test(email.value) || email.value=='') 
            {
				alert("Enter Valid Email....!");
                email.focus();
                email.style.background = '#f08080';
                return false;                    
            }
			if(!password_valid.test(password.value) || password.value=='') 
            {
				alert("Password Must Be 6 to 12 and allowed !@#$%&*()<> character");
                password.focus();
                password.style.background = '#f08080';
                return false;                    
            }
		}
		
	</script>	

</head>

<body>
    <div class="wrap">
             <img src="../css/avatar.png" class="avatar">
             <h2>Sign Up Here</h2>

        <form class="form-register" method="post" onsubmit="return validate();">
               
					<p style="color:green">				   		
					<%
					if(request.getAttribute("successMsg")!=null)
					{
						out.println(request.getAttribute("successMsg"));
					}
					%>
					</p>
				   
				   </br>
				   
                  
                            <input type="text" name="txt_firstname" id="fname" placeholder="Enter Firstname">
                            <input type="text" name="txt_lastname" id="lname" placeholder="Enter lastname">
                            <input type="text" name="txt_email" id="email" placeholder="Enter Email">
                            <input type="password" name="txt_password" id="password" placeholder="Enter Password">
                            <input type="submit" name="btn_register" value="Register">
			
			<p align="center">
                          Already have an account?<a href="studentlogin.jsp" style="font-family:'Play', sans-serif;" style="color:blue">&nbsp;Login</a>
                          </p>	
              
        </form>

    </div>

</body>

</html>

