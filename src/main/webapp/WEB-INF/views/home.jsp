<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Home</title>
<style>
body{
padding: 10px;
font-family: monospace;
font-size: xx-large
}
h1{
font-size: 5em;
}
h4{
font-size: 1em;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-light navbar-light">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active" href="#">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./reg">Register</a>
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

<section class="container p-5 my-5 bg-primary text-white">
<h1> WELCOME TO CDAC NOIDA</h1><br>
<h4 class="text-dark"> Made with &#10084; by ${name}!</h4>
</section>
</body>
</html>