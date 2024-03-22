<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
    <link href="../css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>


<script type="text/javascript">
    // 通过时间来输出不重复的验证码图片
    function _change() {
        var imgEle = document.getElementById("vCode");
        imgEle.src = "${pageContext.request.contextPath}/VerifyCodeServlet?" + new Date().getTime();
    }


</script>

<div class="login_box" style="left: 400px;position: relative">
    <form action="${pageContext.request.contextPath}/register" method="post">
        <input type="text" name="username" id="userName" placeholder="用户名"/><br/>

        <input type="text" name="password" id="pwd" placeholder="密 码"/><br/>

        <input type="text" name="code" style="width: 45%" placeholder="验证码"/>

        <%--    插入图片--%>
        <img id="vCode" src="${pageContext.request.contextPath}/VerifyCodeServlet"/>
        <a class="a" href="javascript:_change()" style="color: #47dc11;font-size: 16px">
            看不清?
        </a>
        <input type="submit" id="btn_register" value="注册"/>
    </form>
    <br>
    <input type="button" onclick="window.location.href='../jsp/login.jsp';" value="返回登录">
</div>
</body>
</html>
