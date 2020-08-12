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
 <h1> <font color="black">Add Hotel</font></h1>
	<form action="addhotel">
		<table>  <br><br><br>
	
			<tr>	
					<td> <b><font color="black">Enter Hotel No  :</font> </b></td>
					<td> <input type="text" name="recognitionno"> </td>
			</tr>		
		    <tr>
		    	<td> <b> <font color="black">Enter Hotel Name : </font></b></td>
		    	<td> <input type="text" name="hotelname"></td>
		    </tr>	
			<tr>
				<td><b> <font color="black">Enter Address :</font></b></td>
				<td> <input type="text" name="address"></td>
			</tr>
			<tr>
				<td><b> <font color="black">Enter Total Rooms :</font></b></td>
				<td> <input type="text" name="totalrooms"></td>
			</tr>
			<tr>
				<td><b> <font color="black">Avaialable Rooms:</font></b></td>
				<td> <input type="text" name="availablerooms"></td>
			</tr>
			<tr>
				<td><b> <font color="black">Cost Per Room:</font></b></td>
				<td> <input type="text" name="costofroom"></td>
			</tr>
			</table><br>
		<center> <input type="submit"> </center>
	</form>
	</div>
	</center>
</body>
</html>