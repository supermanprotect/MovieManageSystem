<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%--    取消浏览器的缓存--%>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>登录界面</title>
    <link href="../css/login.css" rel="stylesheet" type="text/css"/>
</head>

<body>

<%--${pageContext.request.contextPath}--%>

<div class="login_box" style="left: 400px;position: relative">
    <h2>
        <p class="set_center" style="color: #ffdb90">电 影 后 台 管 理 系 统</p>
    </h2>
    <br>
    <center>
        <img src="../images/login_user_logo.png">
    </center>

    <form action="${pageContext.request.contextPath}/login" method="post">
        <input required name="username" type="text" placeholder="用户名">

        <input required name="password" type="password" id="password" placeholder="密码"/>
        <span style="color: red">${error}</span>
        <input value="登录" style="width:100%;" type="submit">
    </form>

    <input type="button"  onclick="window.location.href='../register/register.jsp';" value="注册">
</div>

</body>
</html>

