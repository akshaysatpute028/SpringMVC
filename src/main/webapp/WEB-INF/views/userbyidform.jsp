<%@page import="org.springframework.http.HttpStatus"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" import="javax.servlet.http.HttpServletResponse" import="javax.servlet.http.HttpServletRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Search</title>
<style>
body{
padding: 10px;
font-family: monospace;
font-size: xx-large
}
form input{
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
        <a class="nav-link active" href="./user1">Search</a>
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
<h1 >Search User</h1>
${status}
${enter}

<form action="./getuser" method="post">
<input type="text" name="id" placeholder="Enter User Id"><br><br>
<input type="submit" value="Search" class="btn btn-outline-info">
</form>
</section>
</body>
</html>