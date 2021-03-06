<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Register</title>
</head>
<body>
	<div class="container-fluid bg">
		<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
		<%@ include file="../header.jsp"%>
		<br>
		<p class="h2 text-muted">Registration form</p>
		<div class="container">
			<div class="row">
				<div class="col">
				</div>
				<div class="col">
				<c:if test="${errorMessage != null}">
					<div><h3>Error</h3>
						<p>${errorMessage}</p>
					</div>
				</c:if>
				</div>
				<div class="col">
				</div>
			</div>
		</div>
		<br>
		<form:form method="POST" modelAttribute="user">
			<div class="form-group">
				Username: <form:input path="username"/><br>
				<form:errors path="username" cssClass="error" element="div"/>
				
				E-mail address: <form:input path="email"/><br>
				<form:errors path="email" cssClass="error" element="div"/>
					
				Password: <form:password path="password"/><br>
				<form:errors path="password" cssClass="error" element="div"/>
				
				Confirm password: <form:password path="passwordConfirmed"/><br>
				<form:errors path="passwordConfirmed" cssClass="error" element="div"/>
			</div>
			<div class="form-group">	
				<input type="submit" value="Register" class="btn btn-primary"/>
				<input type="reset" value="Reset the form" class="btn btn-danger"/>
			</div>
		</form:form>
		<br>
		<div class="container">
			<div class="row">
				<div class="col">
				</div>
				<div class="col">
					<div class="btn-group btn-group-lg">
						<a href="${contextPath}/login"><button class="btn btn-dark">Log in.</button></a> 
						<a href="${contextPath}/home"><button class="btn btn-dark">Go to main page.</button></a> 
					</div>	   		
				</div>
				<div class="col">
				</div>
			</div>
		</div> 
		<br>
		<br>
		<br>
		<br>
		<%@ include file="../footer.jsp"%>
	</div>
</body>
</html>