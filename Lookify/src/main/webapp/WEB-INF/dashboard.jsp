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
<title>Lookify</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/app.js"></script>
<!-- change to match your file/naming structure -->
</head>
<body>
	<div class= "container m-3">
		<div class="row align-items-center navbar bg-light">
		  <div class="col-auto m-3">
		    <a href="/new" class="p-2">Add new</a>
		    <a href="/topTen" class="p-2">Top Songs</a>
		  </div>
		  <div class="col-auto">
		    <label  class="col-form-label">Songs by artist: </label>
		    
		  </div>
		  
		  <form class="col-6" action="/search" method="get">
				<div class="input-group">
					<input type="text" class="form-control" name="q">
					<button type="submit" class="btn btn-primary" type="button">Search Artist</button>
				</div>
			</form>
		  
		</div>
		
		<table class="table">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Name</th>
		      <th scope="col">Rating</th>
		      <th scope="col">Actions</th>
		    </tr>
		  </thead>
		  <tbody>
		    <c:forEach items="${list}" var="item">
					<tr>
						<th scope="row"><c:out value="${item.id}" /></th>
						<td><a href="/detail/${item.id}"> <c:out
									value="${item.title}" /></a></td>
						<td><c:out value="${item.rating}" /></td>
						<td>
							<form action="/delete/${item.id}" method="post">
								<input type="hidden" name="_method" value="delete">
								<button class="btn btn-outline-danger">Delete</button>
							</form>
						</td>
					</tr>
				</c:forEach>
		  </tbody>
		</table>



	</div>

</body>
</html>