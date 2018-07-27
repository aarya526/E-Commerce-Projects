<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product In-Stock</title>
</head>
<body>
<table width = "100%">
 <tr>
  <th>Productname</th>
  <th>Description</th>
  <th>quantity</th>
  <th>price</th>
 </tr>
 <tr>
  <c:forEach items = "${list }" var = "product">
   <td>${product.productname }</td>
   <td>${product.description }</td>
   <td>${product.quantity }</td>
   <td>${product.price }</td>
  </c:forEach>
 </tr>
</table>
</body>
</html>