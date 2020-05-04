<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원등록</h1>
<div>
이름
<input type="text" name="name" value="<%=name%>"/>
</div>
<div>
성별
<input type="radio" name="sex" value="남자"<%="남자".equals(sex) ? "checked" : ""%>/>남자
<input type="radio" name="sex" value="여자"<%="여자".equals(sex) ? "checked" : ""%>/>여자
</div>
<div>
<button type="submit">회원 등록</button>
</div>
<table>
<tr>
<td>이름</td><td><%=name%></td>
</tr>
<tr>
<td>성별</td><td?
</table>
</body>
</html>