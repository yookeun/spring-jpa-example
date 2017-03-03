<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Book</title>
</head>
<body>
	<form action="/add" method="post">
	<label for="">title</label>
	<input type="text" name="title" required/>
		
	<label for="">author</label>
	<input type="text" name="author" required/>
	
	<label for="">description</label>
	<input type="text" name="description" required />	
	
	<input type="submit" value="save" />
	</form>
</body>
</html>