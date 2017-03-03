<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Book</title>
</head>
<body>
	<form action="/update" method="post">
	<input type="hidden" name="id" value="${book.id}"/>
	
	<table>
		<tr>
			<td>Title</td>
			<td><input type="text" name="title" value="${book.title}"/></td>
		</tr>
		<tr>
			<td>Author</td>
			<td><input type="text" name="author" value="${book.author}"/></td>
		</tr>		
		<tr>
			<td>Description</td>
			<td><input type="text" name="description" value="${book.description}"/></td>
		</tr>		
	</table>
	<br />
	<input type="submit" value="save" />
	</form>
</body>
</html>