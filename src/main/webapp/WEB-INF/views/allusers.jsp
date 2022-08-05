<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
body{
padding: 10px;
font-family: monospace;
font-size: xx-large
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-light navbar-light">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="./home">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./reg">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./user1">Search</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="./fetchAll">Users</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="./contact">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./help">Help</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./contact">Contact</a>
      </li>
    </ul>
  </div>
</nav>

<section class="container mt-3">
${status}
<h1>All Users</h1>
<table class="table table-striped table-bordered table-sm table-hover">
<thead class="table-info">
<tr>
<th>User Id</th>
<th>Name</th>
<th>Age</th>
<th>Address</th>
<th>Contact</th>
<th colspan="2">Action</th>
</tr>
</thead>
<tbody>
<c:forEach var="user" items="${userList}">
	<tr> 
	  <td>${user.id}</td>
	  <td>${user.name}</td>
	  <td>${user.age}</td>
	  <td>${user.address}</td>
	  <td>${user.phone}</td>
	  <td><button onclick=" location.href='./edit/${user.id}' " type="button" class="btn btn-outline-primary">Edit</button></td>
	  <td><button onclick=" location.href='./delete/${user.id}' " type="button" class="btn btn-outline-danger">Delete</button></td>
	</tr>
</c:forEach>
</tbody>
</table>
</section>

</body>
</html>