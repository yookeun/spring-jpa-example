<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book List</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<td>Title</td>
				<td>Author</td>
				<td>Description</td>
				<td>RegDate</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${bookList }" var="book">
			<tr>
				<td><a href="/book/${book.id}">${book.title}</a></td>
				<td>${book.author}</td>
				<td>${book.description}</td>
				<td>${book.regDate}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<br /><br />
	<a href="/add">Add</a>
</body>
</html>