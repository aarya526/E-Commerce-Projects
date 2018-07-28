<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Product Form</title>
<style>
    img {
    display: block;
    margin-left: auto;
    margin-right: auto;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class = "container">
<spring:url value="/product/save" var = "saveUrl"/>
 <form:form action = "${saveUrl }" method = "post" modelAttribute="productForm">
 <form:hidden path="id"/>
  <div class = "form-group">
   <label>Productname: </label>
   <form:input type = "text" class = "form-control" path = "productname"/>
  </div>
  <div class = "form-group">
   <label>Description</label>
   <form:input type = "text" class = "form-control" path = "description"/>
  </div>
  <div class = "form-group">
   <label>Quantity</label>
   <form:input type = "text" class = "form-control" path = "quantity"/>
  </div>
  <div class = "form-group">
   <label>Price</label>
   <form:input type = "text" class = "form-control" path="price"/>
  </div>
  <div class = "form-group">
   <form:button type = "submit" class = "btn btn-success">Add!</form:button>
  </div>
 </form:form>
</div>
</body>
</html>