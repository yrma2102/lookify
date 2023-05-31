<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BOOK API</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/app.js"></script>
<!-- change to match your file/naming structure -->
</head>
<body>
<div class="container p-3">
		<form:form action="/dashboard" method="post" modelAttribute="Song">
			<div class="row mb-3">

			</div>
		  <div class="form-group row">
		    <label for="title" class="col-sm-2 col-form-label">Title</label>
		    <div class="col-sm-10">
		      <form:input path="title" type="text" class="form-control" id="title" placeholder="Name"/>
		    </div>
		    <form:errors class="text-danger" path="title"></form:errors>
		  </div>
		  
		  <div class="form-group row">
		    <label for="artist" class="col-sm-2 col-form-label">Artist</label>
		    <div class="col-sm-10">
		      <form:input path="artist" type="text" class="form-control" id="artist" placeholder="Artist"/>
		    </div>
		    <form:errors class="text-danger" path="artist"></form:errors>
		  
		  </div>
		  
		  <div class="form-group row">
		    <label for="rating" class="col-sm-2 col-form-label">Rating (1-10)</label>
		    <div class="col-sm-10">
		      <form:input path="rating" type="number" class="form-control" id="rating" placeholder="Rating"/>
		    </div>
		    <form:errors class="text-danger" path="rating"></form:errors>
		  </div>
		 
		  <div class="form-group row">
		    <div class="col-sm-10">
		      <button type="submit" class="btn btn-primary">Add Song</button>
		    </div>
		  </div>
		  
		</form:form>
</div>

</body>
</html>