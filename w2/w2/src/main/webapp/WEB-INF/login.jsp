<%--
  Created by IntelliJ IDEA.
  User: 804-07
  Date: 2024-01-16
  Time: 오후 6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <title>Title</title>
</head>
<body>
<div class="container">
<c:if test="${param.result == 'error'}">
    <h1>로그인에러 : 등록된 아이디가 아닙니다.</h1>
</c:if>

<form class="loginbox" action="/login" method="post">
    <h3 class="mb-1">Login</h3>
    <div class="formbox">
        <div class="form-floating">
            <input type="text" name="mid">
            <span>아이디</span>
        </div>
        <div class="form-floating">
            <input type="text" name="mpw">
            <span>비밀번호</span>
        </div>
        <input type="checkbox" name="auto"><span>자동로그인</span>
        <button type="submit" class="btn btn-secondary btn-lg w-100" style="background-color:#1C2474; border:none;">LOGIN</button>
    </div>
</form>

</div>
</body>
</html>
<style>
    .formbox {
        margin-bottom: 2rem;
    }
    .loginbox {
        position: absolute;
        top: 12.8%;
        width: 100%;
        font-family: 'Nanum Gothic', sans-serif;
        font-size: 0.9rem;
        font-weight: 300;
        color: #1C2474;
    }
    .container {
        position: relative;
        padding: 0;
        width: 330px;
        height: 250vh;
    }
    button {
        font-size: 1.1rem;
        padding: 2.5% 0 3% 0;
    }
    span {
        font-family: 'Nanum Gothic', sans-serif;
        font-size: 0.9rem;
        font-weight: 300;
        color: #1C2474;
    }
    h3 {
        font-family: 'Nanum Gothic', sans-serif;
        color: #1C2474;
        font-weight: 800;
    }
</style>

