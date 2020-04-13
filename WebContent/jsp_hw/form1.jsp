<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String s1=(request.getParameter("number")!=null)?request.getParameter("number"):"0";
int number=Integer.parseInt(s1);
if(request.getMethod().equals("POST")){
	number++;
}
%> 
<form method="POST">
<input type="text" name="number" value="<%=number%>"/>
<button type="submit">++</button>
</form>
</body>
</html> 