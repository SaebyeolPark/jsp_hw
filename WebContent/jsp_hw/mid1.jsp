<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table { border : 1px solid black; border-collapse : collapse;}
tr, td { border: 1px solid black; border-collapse : collapse; 
padding : 2px 5px 2px 5px;}
</style>
</head>
<body>
<% String cmd = request.getParameter("cmd");
if(cmd==null){
	cmd="0";
}
int number = Integer.parseInt(cmd);
%>
<form>
<input type="text" name="cmd" value= "<%=cmd %>"/>
</form>
<br/>
<table>
<%for(int i=1; i<=9; i++){%>
<tr>
	<td>
<%
	out.print(number+" x "+i+" = "+ number * i);
	%>
	</td>
</tr>
<% }%>
</table>
</body>
</html>