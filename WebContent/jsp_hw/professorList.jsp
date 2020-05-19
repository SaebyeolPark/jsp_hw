<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, jdbc2.*" %>
<%
List<Professor> list = professorDAO.findAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/jsp_hw/res/common.css">
<style>
  div.container { width: 600px; }
  h1 { margin-bottom: -20px; }
  a.btn { float: right; margin-bottom: 5px; }
</style>
</head>
<body>
<div class="container">

<h1>교수목록</h1>
<a class="btn" href="professorCreate.jsp">교수등록</a>

<table class="table">
  <thead>
    <tr>
      <th>이름</th>
      <th>학과</th>
    </tr>
  </thead>
  <tbody>
    <% for (Professor professor : list) { %>
      <tr>
        <td class="align-center"><%= professor.getProfessorName() %></td>
        <td class="align-center"><%= professor.getDepartmentName() %></td>
      </tr>
    <% } %>
  </tbody>
</table>

</div>
</body>
</html>

