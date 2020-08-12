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
 <h1> <font color="black">Book Hotel</font></h1>
	<form action="bookhotel">
		<table>  <br><br><br>
	
			<tr>	
					<td> <b><font color="black">Enter Hotel No  :</font> </b></td>
					<td> <input type="text" name="recognitionno"> </td>
			</tr>		
		    <tr>
		    	<td> <b> <font color="black">Enter Mobile Number : </font></b></td>
		    	<td> <input type="text" name="mobile"></td>
		    </tr>	
			<tr>
				<td><b> <font color="black">Enter Number Of Rooms :</font></b></td>
				<td> <input type="text" name="noofrooms"></td>
			</tr>
			<tr>
				<td><b> <font color="black">From Date:</font></b></td>
				<td> <input type="date" name="fromdate"></td>
			</tr>
			<tr>
				<td><b> <font color="black">To Date:</font></b></td>
				<td> <input type="date" name="todate"></td>
			</tr>
			</table><br>
		<center> <input type="submit" value="BOOK"> </center>
	</form>
	</div>
	</center>
</body>
</html>