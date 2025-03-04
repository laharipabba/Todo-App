<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
    <p style="color:red;background-color:yellow;
            font-style:italic;">
      <%Object error=request.getAttribute("loginError");%>
      <%=(error==null)?"":error.toString()%>
    </p>
  </center>
	<form method="post" action="./LoginServlet">
		<table align="center" width="20%" border="1">
			<tr>
				<th>email</th>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<th>pass</th>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<th><input type="submit" name="submit" value="Login"></th>
				<th><input type="reset" name="reset" value="Clear"></th>
			</tr>
		</table>
	</form>
	<p align="center">New User, <a href="Register.html">SignUp</a></p>

</body>
</html>