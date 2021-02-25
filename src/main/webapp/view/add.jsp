<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
    <meta charset="utf-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        .message {
            color: #e80368;
        }
    </style>
</head>
<body>

<form class="form-horizontal" method="post" action="products?action=create" accept-charset="UTF-8">
    <fieldset>

        <!-- Form Name -->
        <legend>PRODUCTS</legend>
        <p>
            <c:if test='${requestScope["message"] != null}'>
                <span class="message">${requestScope["message"]}</span>
            </c:if>
        </p>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="name">Product Name</label>
            <div class="col-md-4">
                <input id="name" name="name" placeholder="Name" class="form-control input-md"
                       required="" type="text">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="price"> Price</label>
            <div class="col-md-4">
                <input id="price" name="price" placeholder="Price" class="form-control input-md"
                       required="" type="text">

            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="quantity"> Quantity</label>
            <div class="col-md-4">
                <input id="quantity" name="quantity" placeholder="Quantity"
                       class="form-control input-md" required="" type="text">

            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="color"> Color</label>
            <div class="col-md-4">
                <input id="color" name="color" placeholder="Color" class="form-control input-md"
                       required="" type="text">

            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="description">Description</label>
            <div class="col-md-4">
                <input id="description" name="description" placeholder="Description"
                       class="form-control input-md" required="" type="text">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="categoryId">Product Category</label>
            <div class="col-md-4">
                <input id="categoryId" name="categoryId" placeholder="Category Id"
                       class="form-control input-md" required="" type="text">
            </div>
        </div>

        <!-- Button -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="accept"></label>
            <div class="col-md-4">
                <button id="accept" name="accept" class="btn btn-primary">Accept</button>
            </div>
        </div>
    </fieldset>

</form>
</body>
</html>
