<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("customer".equals(msg)){%>

<h1  style="color:red;text-align:center;">customer</h1>

<%}%>
<%if("seller".equals(msg)){%>

<h1  style="color:red;text-align:center;">seller</h1>
<%} %>
<%
String email=session.getAttribute("email").toString();
%>
<h1><%out.println(email); %></h1>
</body>
</html>