<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
    table, tr,th, td
                    {
                         border: 1px solid black;
                         width : 40%;
                        text-align: center;
                        border-collapse:collapse;
                    }
​    
    </style>  
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>LIST OF HOTELS</h2>
<table border="2" style="padding: 0px;" >

<tr>

<th>HOTEL NO</th>
<th>HOTEL NAME</th>
<th>ADDRESS</th>
<th>TOTAL ROOMS</th>
<th>AVAILABLE ROOMS</th>
<th>COST OF ROOM </th>
</tr>

<c:forEach var="s" items="${list}">
  
      <tr>
      
       <td>
      <h3><c:out value="${s.getRecognitionno()}"></c:out></h3>
      </td>
      
      <td>
      <h3><c:out value="${s.getHotelname()}"></c:out></h3>
      </td>
      
      <td>
      <h3><c:out value="${s.getAddress()}"></c:out></h3>
      </td>
   
   
      <td>
      <h3><c:out value="${s.getTotalrooms()}"></c:out></h3>
      </td>
      
      <td>
      <h3><c:out value="${s.getAvailablerooms()}"></c:out></h3>
      </td>
   
   
      <td>
      <h3><c:out value="${s.getCostofroom()}"></c:out></h3>
      </td>
      </tr>
      </c:forEach>
      </table>
      </center>
</body>
</html>