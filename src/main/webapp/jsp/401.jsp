<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>报错界面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel='stylesheet' href='../css/bootstrap.min401.css'>

</head>
<body background="../images/404.jpg" style="background-size:100% 100% ; background-attachment: fixed ">

<center>
    <div class="back_ground" style="font-family: 宋体,serif;color: #f21c17">
        <h1 class="layui-textarea">
            请先登录
        </h1>
        <br>

        <a href="${pageContext.request.contextPath}/jsp/login.jsp">
            <button class="btn-danger" style="font-size: 30px">返回登录</button>
        </a>
    </div>
</center>

</body>
</html>
