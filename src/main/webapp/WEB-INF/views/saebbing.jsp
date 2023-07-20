<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Super</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/list">상품목록</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/order">상품주문</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/saebbing">상품등록</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/" role="button" data-bs-toggle="dropdown">분류</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/food">포드코드</a></li>
                        <li><a class="dropdown-item" href="/tool">생필품</a></li>
                        <li><a class="dropdown-item" href="/customer">고객센터</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-3">
    <form action="/saebbing"method="post" enctype="application/x-www-form-urlencoded">
        <div class="mb-3 mt-3">
            <input type="text" class="form-control" placeholder="Enter 상품명" name="name">
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" placeholder="Enter 상품가격" name="price">
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" placeholder="Enter 상품재고" name="qty">
        </div>
        <button type="submit" class="btn btn-primary">상품등록</button>
    </form>
</div>

</body>
</html>


