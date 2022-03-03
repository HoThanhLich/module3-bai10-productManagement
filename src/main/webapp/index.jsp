<%@ page import="java.util.List" %>
<%@ page import="com.company.model.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: HP ZBOOK
  Date: 3/3/2022
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    List<Product> products = new ArrayList<>();
    products.add(new Product(1,"IPhone 13 Pro Max 512GB", 40000000, "new", "/img/iphone-13-pro-max.jpg"));
    products.add(new Product(2,"IPhone 13 Pro 512GB", 35000000, "new", "/img/ip13 pro.jfif"));
    products.add(new Product(3,"IPhone 13 512GB", 30000000, "new", "/img/ip13.jpg"));
    pageContext.setAttribute("listProduct",products);
  %>
  <h1>Danh Sách Sản Phẩm</h1>
  <table>
    <tr>
      <td>Mã Sản Phẩm</td>
      <td>Tên Sản Phẩm</td>
      <td>Giá Sản Phẩm</td>
      <td>Mô Tả Sản Phẩm</td>
      <td>Ảnh Sản Phẩm</td>
    </tr>
    <c:forEach var="product" items="${listProduct}">
      <tr>
        <td>${product.id}</td>
        <td>${product.name}</td>
        <td>${product.price}</td>
        <td>${product.description}</td>
        <td><img src="${product.image}" alt="ảnh sản phẩm"></td>
      </tr>
    </c:forEach>

  </table>
  </body>
</html>
