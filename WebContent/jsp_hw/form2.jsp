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
String result="one";
String cmd = request.getParameter("cmd");
if("one".equals(cmd)){
	result="one";
}else if("two".equals(cmd)){
	result="two";
}else if("three".equals(cmd)){
	result="three";
}
%>

<form>
<div>
<select name="cmd">
<option value="one" <%="one".equals(cmd) ? "selected" : ""%>>one</option>
<option value="two" <%="two".equals(cmd) ? "selected" : ""%>>two</option>
<option value="three" <%="three".equals(cmd) ? "selected" : ""%>>three</option>
</select>
</div>

<div>
<input type="text" name="result" value="<%=result%>"/>
</div>
<div>
<button type="submit">Ok</button>
</div>
</form>

</body>
</html>