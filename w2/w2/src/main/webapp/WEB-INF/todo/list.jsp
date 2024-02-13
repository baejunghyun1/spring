<%--
  Created by IntelliJ IDEA.
  User: 804-07
  Date: 2024-01-16
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <title>Todo Title</title>
</head>
<header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/todo/list">리스트</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/todo/register">등록하기</a>
                    </li>
                </ul>
            </div>
            <div>
                <h6>${appName}</h6>
                <h6>사용자 아이디: ${loginInfo.mid}</h6>
                <h6>사용자 닉네임: ${loginInfo.mname}</h6>
            </div>
            <form action="/logout" method="post">
                <button class="btn btn-secondary btn-lg w-40 ms-5" style="background-color:#1C2474; border:none;">LOGOUT</button>
            </form>
        </div>
    </nav>
</header>
<body>
<div class="center">
    <h1>Todo List</h1>
</div>
<table class="table">
    <thead>
    <tr>
        <th scope="col">no</th>
        <th scope="col">title</th>
        <th scope="col">dueDate</th>
        <th scope="col">finished</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${dtoList}" var="dto">
    <tr>
        <th scope="row"><a href="/todo/read?tno=${dto.tno}">${dto.tno}</a></th>
        <td>${dto.title}</td>
        <td>${dto.dueDate}</td>
        <td>${dto.finished? "DONE": "NOT YET"}</td>
    </tr>
    </tbody>
</c:forEach>
</table>
</body>
</html>
<style>
    span {
        color: cornflowerblue;
    }
    a {
        text-decoration-line: none;
    }
    .table {
        margin-left: auto;
        margin-right: auto;
    }
    .table td, .table th {
        padding: 20px;
    }
    .center {
        display: flex;
        justify-content: center;
        align-items: center;
    }
</style>
