<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
body{
padding: 10px;
font-family: monospace;
font-size: xx-large;
}
a{
text-decoration: none;
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
        <a class="nav-link" href="./fetchAll">Users</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="./contact">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./help">Help</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="./contact">Contact</a>
      </li>
    </ul>
  </div>
</nav>
<section class="container mt-3">
  <div class="card" style="width:300px">
  
    <img class="card-img-top" src="<c:url value="/resources/image/card.jpg"/>" alt="Card image" style="width:100%">
    
    <div class="card-body">
      <h3 class="card-title">Akshay Satpute</h3>
      <p class="card-text" style="font-size:medium">Full Stack Developer</p>
      <a href="https://www.linkedin.com/in/akshay-satpute-365a86220/" class="btn btn-primary">Linked In </a>
      <a href="mailto:satputeakshay028@gmail.com" class="btn btn-success">Send Mail </a>
    </div>
  </div>
</section>

</body>
</html>