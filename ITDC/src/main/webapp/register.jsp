<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	h1
	{
	font-family:Georgia;
	color:"white";
	size:"10";
	align: "center";
	padding-left: 100px;
	} 
	
	
</style>
</head>
<body>
<center>
<div style="padding-top: 130px;"> 
 <h1> <font color="black">Register</font></h1>
	<form action="registerpage">
		<table>  <br><br><br>
	
			<tr>	
					<td> <b><font color="black">Enter Customer Name :</font> </b></td>
					<td> <input type="text" name="firstname"> </td>
			</tr>		
		    <tr>
		    	<td> <b> <font color="black">Enter Customer Password : </font></b></td>
		    	<td> <input type="text" name="pass"></td>
		    </tr>	
			<tr>
				<td><b> <font color="black">Enter Mobile Number :</font></b></td>
				<td> <input type="text" name="mobile"></td>
			</tr>
			</table><br>
		<center> <input type="submit"> </center>
	</form>
	</div>
	</center>
</body>
</html>