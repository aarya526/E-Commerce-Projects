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
<style>
img {
    display: block;
    margin-left: auto;
    margin-right: auto;
}
  .affix {
      top: 0;
      width: 100%;
      z-index: 9999 !important;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
</style>
<title> Product In-Stock</title>
 <link rel="icon" href="${pageContext.request.contextPath }/resources/images/rasLogo.png" type="image/x-icon">
</head>
<body>
<jsp:include page="header.jsp"/>
<div class = "container-fluid">
   <spring:url value="/product/add" var = "addUrl"/>
   <a href = "${addUrl }">Add New Product(<span class = "glyphicon glyphicon-plus"></span>)</a>
    <c:if test="${!empty (list) }">
<table width = "100%"  class = "table-hover table-bordered">
<thead>
 <tr>
  <th>Id</th>
  <th>Productname</th>
  <th>Description</th>
  <th>quantity</th>
  <th>price</th>
  <th colspan = "2">Action</th>
 </tr>
</thead>
<tbody>
   <c:forEach items = "${list }" var = "product">
 <tr>
   <td>${product.id }</td>
   <td>${product.productname }</td>
   <td>${product.description }</td>
   <td>${product.quantity }</td>
   <td>${product.price }</td>
  <spring:url value="/product/update/${product.id }" var = "updateUrl"/>
   <td><a href = "${updateUrl }"><span class = "glyphicon glyphicon-pencil"></span></a></td>
   <spring:url value="/product/delete/${product.id }" var = "deleteUrl"/>
   <td><a href = "${deleteUrl }"><span class = "glyphicon glyphicon-trash"></span></a></td>
 </tr>
   </c:forEach>
 </tbody>

</table>
  </c:if>
<c:if test="${empty (list) }">
 <h1>There is nothing in stock</h1>
</c:if>
</div>
</body>
</html>