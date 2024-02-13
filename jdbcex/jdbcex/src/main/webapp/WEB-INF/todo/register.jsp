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
            <button type="reset">RESET</button>
            <button type="submit">REGISTER</button>
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
    button {
        padding: 10px 20px; /* 버튼 내부의 패딩을 설정합니다. */
        font-size: 1.2em; /* 글자 크기를 설정합니다. */
        color: white; /* 글자 색을 흰색으로 설정합니다. */
        background-color: #4CAF50; /* 버튼의 배경색을 설정합니다. */
        border: none; /* 테두리를 없앱니다. */
        cursor: pointer; /* 마우스 커서를 손가락 모양으로 변경합니다. */
        border-radius: 5px; /* 버튼의 모서리를 둥글게 만들어 줍니다. */
        transition: 0.3s; /* 버튼 상태 변경시 애니메이션 효과를 줍니다. */
        margin-bottom: 10px;
    }

    button:hover {
        background-color: #45a049; /* 마우스를 올렸을 때 버튼의 배경색을 변경합니다. */
    }
</style>