<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<center>
    <h1>Manager Products</h1>
    <h2>
        <a href="/products?action=create">Add New Product</a>
    </h2>
    <h2>
        <a href="/products">Back To Home</a>
    </h2>

    <form class="form-inline my-2 my-lg-0" method="post" action="products?action=search">
        <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
</center>
<div align="center">
    <table border="1" cellpadding="5">

        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Color</th>
            <th>Description</th>
            <th>Category</th>
            <th>Edit/Delete</th>
        </tr>
        <c:forEach var="product" items="${listProduct}">
            <tr>
                <td>${product.getName()}></td>
                <td>${product.getPrice()}></td>
                <td>${product.getQuantity()}></td>
                <td>${product.getColor()}></td>
                <td>${product.getDescription()}></td>
                <td>${product.getCategory_id()}></td>
                <td>
                    <a href="${pageContext.request.contextPath}/products?action=edit&id=${product.getId()}">Edit</a>
                    <a href="${pageContext.request.contextPath}/products?action=delete&id=${product.getId()}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
