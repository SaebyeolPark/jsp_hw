<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table { border : 1px solid black; border-collapse : collapse;}
th, td { border : 1px solid black; border-collapse : collapse; 
padding : 2px 5px 2px 5px;}
</style>
</head>
<body>
<table>
<%
for(int i=1; i<=9; i++){
	out.print("<tr>");
	for(int j=2; j<=9; j++){
		out.print("<td>"+j+" x "+i+" = "+j*i+"</td>");
	}
	out.print("</tr>");
}
%>
</table>
</body>
</html>