<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- http://localhost:8088/eljstl/10?color=1 -->
	
	<%
	if( "1".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: red">빨강</span>
	<%
	} else if( "2".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: green">녹색</span>
	<%
	} else if( "3".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: blue">파랑</span>
	<%
	}
	%>
	<br>
	<br>
	
	
	<c:choose>
		<c:when test="${param.color == 1}">
			<span style="color: red">빨강</span>
		</c:when>
		<c:when test="${param.color == 2}">
			<span style="color: green">초록</span>
		</c:when>
		<c:when test="${param.color == 3}">
			<span style="color: blue">파랑</span>
		</c:when>
	</c:choose>
	
	
	
</body>
</html>