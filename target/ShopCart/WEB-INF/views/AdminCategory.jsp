<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Random"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Categories</title>
</head>
<body>
	<div class="container">
	<h1>Add a Category </h1>		
	<c:url var="addAction" value="/addcategory"></c:url>

	<form:form action="${addAction}" commandName="category" class="form-horizontal">
	
			<div class="form-group">
							<form:label path="id" class="control-label col-sm-2" >
						<spring:message  text="Category ID" />
					</form:label>
					<div class="col-sm-10">
					<c:choose>
					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern =".{3,7}" required="true" title="id should contains 3 to 7 characters" class="form-control" /></td>
					</c:otherwise>
				</c:choose>
			<form:input path="id" hidden="true" />
			</div>
			</div>
			<br>
			<div class="form-group">
				<form:label path="name" class="control-label col-sm-2" >
						<spring:message  text="Category Name" />
					</form:label>
					<div class="col-sm-10">
				<form:input path="name" required="true" class="form-control" />
				</div>
				</div>
				<br>
				<div class="form-group">
			<form:label path="description" class="control-label col-sm-2" >
						<spring:message  text="Category Description" />
					</form:label>
					<div class="col-sm-10">
				<form:input path="description" required="true" class="form-control"/>
			</div>
			</div>
			<br>
			
	<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
				<c:if test="${!empty category.name}">
				
						<input type="submit" class="btn btn-success" 
							value="<spring:message text="Edit Category"/>" />
					</c:if> <c:if test="${empty category.name}">
						<input type="submit" class="btn btn-primary" value="<spring:message text="Add Category"/>" />
					</c:if>
		</div>
		</div>
	</form:form>	
	<br>
	<h3>Category List</h3>
	
	<c:if test="${!empty categoryList}">
	<div class="table-responsive">
			<table class="table">
			<thead>
			<tr>
				<th>Category ID</th>
				<th>Category Name</th>
				<th>Category Description</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="<c:url value='/editcategory/${category.id}' />">Edit</a></td>
					<td><a href="<c:url value='/removecategory/${category.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		</div>
	</c:if>
</div>
</body>
</html>