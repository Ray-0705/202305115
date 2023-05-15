<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="item" items='${sortitems}'>
	<div>
		<a href='${item.url}'>click</a>
		<br>
		<p>${item.itemId}</p>
		<br>
		<img alt="" src="${item.img}" width="100px">
		<br>
		<p>${item.name}</p>
		<br>
		<p>${item.price}</p>
		
	</div>
	</c:forEach>
</body>
</html>