<%@page import="org.springframework.http.HttpStatus"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Update</title>
<style>
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
        <a class="nav-link" href="../home">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../reg">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../user1">Search</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="../fetchAll">Users</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="./contact">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../help">Help</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../contact">Contact</a>
      </li>
    </ul>
  </div>
</nav>

<section class="container mt-3">
<h1>Update</h1>
<form action="../update" method="post">
<input type="text" name="id" value="${getuser.getId()}"/><br><br>
<input type="text" name="name" placeholder="Enter Name" value="${getuser.getName()}" /><br><br>
<input type="text" name="age" placeholder="Enter Age" value="${getuser.getAge()}"/><br><br>
<input type="text" name="address" placeholder="Enter Address" value="${getuser.getAddress()}"/><br><br>
<input type="text" name="phone" placeholder="Enter Phone" value="${getuser.getPhone()}"/><br><br>
<input type="submit" value="Update" class="btn btn-success">
</form>
</section>
</body>
</html>