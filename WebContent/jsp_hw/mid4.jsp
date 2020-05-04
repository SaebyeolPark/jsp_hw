<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {margin: 20px 0px 20px 0px; }
table { border : 1px solid black; border-collapse : collapse; 
width: 300px; table-layout: fixed;}
tr, td { border: 1px solid black; border-collapse : collapse; 
padding : 2px 5px 2px 5px;}
 div.error { margin: 10px; padding: 10px 20px; background-color: #fdd; border: 1px solid #faa; }
</style>
</head>
<body>
<% 
String name = request.getParameter("name");
String result = "";
String 에러메시지 = null;
if(name==null){
	name="";
}
String sex = request.getParameter("sex");

if("남자".equals(sex)){
	result="남자";
}else if("여자".equals(sex)){
	result="여자";
}

if (name == null || name.length() == 0) 
    에러메시지 = "이름을 입력하세요";
else if (result == null || result.length() == 0) 
    에러메시지 = "성별을 입력하세요";
%>
<form method="post">
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
</form>
<% if (에러메시지 != null) { %>
  <div class="error">
    회원등록 실패: <%= 에러메시지 %>
  </div>
<% } %>
</div>
<table>
<tr>
<td>이름</td><td><%=name%></td>
</tr>
<tr>
<td>성별</td><td><%=result %></td>
</tr>
</table>
</body>
</html>