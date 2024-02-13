<%--
  Created by IntelliJ IDEA.
  User: 804-07
  Date: 2024-01-16
  Time: 오후 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <title>Title</title>
</head>
<body>
<div class="center">
    <form action="/todo/register" method="post">
        <div>
            <input type="text" name="title" placeholder="INSERT TITLE">
        </div>
        <div>
            <input type="date" name="dueDate">
        </div>
        <div>
            <button type="reset" class="btn btn-secondary btn-lg w-40" style="background-color:#1C2474; border:none;">RESET</button>
            <button type="submit" class="btn btn-secondary btn-lg w-40" style="background-color:#1C2474; border:none;">REGISTER</button>
        </div>
    </form>
</div>
</body>
</html>
<style>
    .center {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .center form {
        width: 15%;
        font-size: 2em;
    }
    input[type="text"], input[type="date"] {
        width: 100%; /* 입력 칸의 너비를 최대로 설정합니다. 필요에 따라 값을 변경할 수 있습니다. */
        height: 100px; /* 입력 칸의 높이를 설정합니다. 필요에 따라 값을 변경할 수 있습니다. */
        font-size: 1.2em; /* 글자 크기를 설정합니다. 필요에 따라 값을 변경할 수 있습니다. */
        padding: 5px; /* 입력 칸 안의 패딩을 설정합니다. 필요에 따라 값을 변경할 수 있습니다. */
    }
    button:hover {
        background-color: #45a049; /* 마우스를 올렸을 때 버튼의 배경색을 변경합니다. */
    }
</style>