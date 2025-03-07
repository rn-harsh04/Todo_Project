<%@ page import="java.util.List, model.Todo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table mt-3">
<tr><th>Title</th><th>Description</th><th>Last_date</th><th>Status</th><th colspan = 2>Action</th></tr>
            <%
                List<Todo> todos = (List<Todo>) request.getAttribute("todos");
                if (todos != null) {
                    for (Todo todo : todos) {
            %>
            <tr>
                <td><%= todo.getTitle() %></td>
                <td><%= todo.getDescription() %></td>
                <td><%= todo.getLast_date() %></td>
                <td><%= todo.getStatus() %></td></tr>
            <% } 
                    } %>
        </table>

</body>
</html>