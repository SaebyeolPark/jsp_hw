<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lecture1.form02.*" %>
<%
String Id = "";
String studentNumber = "";
String name = "";
String departmentId = "0";
String year = "0";
String 에러메시지 = null;
request.setCharacterEncoding("UTF-8");
if (request.getMethod().equals("POST")) {
    Id = request.getParameter("Id");
    studentNumber = request.getParameter("studentNumber");
    name =  request.getParameter("name");
    departmentId = request.getParameter("departmentId");
    year = request.getParameter("year");
    if (Id == null || Id.length() == 0) 
        에러메시지 = "사용자 아이디를 입력하세요";
    else if (studentNumber == null || studentNumber.length() == 0) 
        에러메시지 = "학번을 입력하세요";
    else if (name == null || name.length() == 0) 
        에러메시지 = "이름을 입력하세요";
    else if (year == null || name.length() == 0 || "0".equals(year))
        에러메시지 = "학년을 입력하세요";
    else {
    	int I_Id=Integer.parseInt(Id);
    	int I_year=Integer.parseInt(year);
    	int I_departmentId=Integer.parseInt(departmentId);

        Student std = new Student(I_Id, studentNumber, name, I_departmentId, I_year);
        session.setAttribute("std", std);
        response.sendRedirect("studentCreat_success.jsp");
        return;
    }    
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="https://kit.fontawesome.com/68abb170e0.js" crossorigin="anonymous"></script>
<style>
  body { font-family: 굴림체; font-size: 10pt; }
  div.container { width: 400px; margin: 20px auto; }
  form, form div { margin-bottom: 20px; }
  label { display: block; }   
  input.text { width: 200px; padding: 5px; }
  select { width: 150px; padding: 5px; }
  .btn { padding: 0.7em 2em; border: 1px solid #aaa; border-radius: 4px; 
         background: linear-gradient(#fff, #ddd); color: black;       
         font-family: 굴림체; font-size: 10pt; line-height: 1em;   
         text-decoration: none; cursor: pointer; display: inline-block; }
  .btn:active {
      -ms-transform: translateY(2px);
      -webkit-transform: translateY(2px);
      transform: translateY(2px);
      background: #ccc;  }
   hr { margin-top: 80px; }
   div.info { margin: 10px; padding: 10px 20px; background-color: #dff; border: 1px solid #8ff; }
   div.error { margin: 10px; padding: 10px 20px; background-color: #fdd; border: 1px solid #faa; }
</style>
</head>
<body>

<div class="container">


<form method="post">
  <h1>회원가입</h1>
  <div>
    <label>ID</label>
    <input type="text" class="text" name="Id" value="<%= Id %>" />
  </div>
  <div>
    <label>학번</label>
    <input type="text" class="text" name="studentNumber" value="<%= studentNumber %>" />
  </div>
  <div>
    <label>이름</label>
    <input type="text" class="text" name="name" value="<%= name %>" />
  </div>
  <div>
        <label>학과</label>
    <select class="form-control" name="departmentId">
      <option value="1" <%= "1".equals(departmentId) ? "selected" : "" %>>소프트웨어공학과</option>
      <option value="2" <%="2".equals(departmentId) ? "selected" : "" %>>컴퓨터공학과</option>
      <option value="3" <%= "3".equals(departmentId)? "selected" : "" %>>정보통신공학과</option>
      <option value="4" <%= "4".equals(departmentId)? "selected" : "" %>>글로컬IT공학과</option>

    </select>
  </div>
  <div>
    <label>학년</label>
    <input type="text" class="text" name="year" value="<%= year %>" />
  </div>
  
  <button type="submit" class="btn">
      <i class="fas fa-user-plus"></i> 회원가입
  </button>
</form>

<% if (에러메시지 != null) { %>
  <div class="error">
    회원가입 실패: <%= 에러메시지 %>
  </div>
<% } %>
</div>
</body>
</html>

