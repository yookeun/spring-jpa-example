<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Book</title>
</head>
<body>
	<table>
		<tr>
			<td>Title</td>
			<td>${book.title}</td>
		</tr>
		<tr>
			<td>Author</td>
			<td>${book.author}</td>
		</tr>		
		<tr>
			<td>Description</td>
			<td>${book.description}</td>
		</tr>
		<tr>
			<td>RegDate</td>
			<td>${book.regDate}</td>
		</tr>		
	</table>
	<br />
	<a href="/update/${book.id}">Update</a>&nbsp;&nbsp;<a href="/delete/${book.id}">Delete</a>&nbsp;&nbsp;
	<a href="/">Go back to List</a>
	
	<br />
</body>
</html>