<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
body{
padding: 20px;
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
        <a class="nav-link active" href="./reg">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./user1">Search</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./fetchAll">Users</a>
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
<h1>Registration Details</h1>
<table class="table table-bordered table-sm table-hover">
<thead class="table-success">
<tr>
<th>User Id</th>
<th>Name</th>
<th>Age</th>
<th>Address</th>
<th>Contact</th>
</tr>
</thead>
<tbody>
<tr>
<td>${user.id }</td>
<td>${user.name }</td>
<td>${user.age }</td>
<td>${user.address}</td>
<td>${user.phone}</td>
</tr>
</tbody>
</table>
<div class="alert alert-success">
  <strong>Success!</strong> Registration complete.
</div>
</section>

</body>
</html>