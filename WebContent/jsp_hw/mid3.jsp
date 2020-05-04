<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {margin: 20px 0px 20px 0px; }
</style>
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
<input type="radio" name="cmd" value="one"<%="one".equals(cmd) ? "checked" : ""%>/>one
<input type="radio" name="cmd" value="two"<%="two".equals(cmd) ? "checked" : ""%>/>two
<input type="radio" name="cmd" value="three"<%="three".equals(cmd) ? "checked" : ""%>/>three
</div>
<div>
<select>
<option value="one" <%="one".equals(cmd) ? "selected" : ""%>>one</option>
<option value="two" <%="two".equals(cmd) ? "selected" : ""%>>two</option>
<option value="three" <%="three".equals(cmd) ? "selected" : ""%>>three</option>
</select>
</div>

<div>
<button type="submit">Ok</button>
</div>
</form>
</body>
</html>