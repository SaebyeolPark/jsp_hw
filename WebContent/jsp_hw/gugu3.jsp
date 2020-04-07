<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table { border : 1px solid black; border-collapse : collapse;}
tr, td { border : 1px solid black; border-collapse : collapse; 
padding : 2px 5px 2px 5px;}
</style>
</head>
<body>
<table>
<tr>
<%for(int i=2; i<=9; i++){%>
	<td>
<% for(int j=1; j<=9; j++){
	out.print(i+" x "+j+" = "+i*j+"<br/>");
	}%>
	</td>
<% if(i==5){%>
</tr><tr>
<% }%>
<% }%>
</tr>

</table>
</body>
</html>