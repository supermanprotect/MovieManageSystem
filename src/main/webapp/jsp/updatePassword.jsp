<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>密码修改界面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <style type="text/css">
        .container {
            width: 500px;
            margin: 0 auto;
        }
        .progress-bar {
            border: 1px solid #000;
        }
        .progress {
            width: 0;
            background: #DEDEDE;
            height: 20px;
        }
    </style>

</head>

<body>

<div class="x-body">
    <form class="layui-form" action="${pageContext.request.contextPath}/updatePwd" method="post">
        <input type="hidden" value="${sessionScope.userSession.username}" name="username">
        <div class="layui-form-item">
            <label for="L_username" class="layui-form-label">
                <span class="x-red">初始密码</span>
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_username" name="oldPwd" required lay-verify="nikename"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_pass" class="layui-form-label">
                <span class="x-red">新的密码</span>
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_pass" name="pass" required lay-verify="pass" placeholder="6到16个字符"
                       autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
                <span class="x-red">确认密码</span>
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_repass" name="repass" required lay-verify="repass" autocomplete="off"
                       placeholder="6到16个字符" class="layui-input" onkeyup="validate()"><span id="tishi"></span>
                <span id="msg">${msg}</span>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
            </label>
            <button class="layui-btn" type="submit" id="button" onclick="pwd_update()">
                修改
            </button>
            <%--返回上一页--%>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" name="Submit" onclick="history.back()" value="返回主页" class="layui-btn">
        </div>

    </form>

</div>

<script>
    function pwd_update() {
        var su1 = ${sessionScope.userSession.password};
        var su2 = document.getElementById("L_username").value;

        if (su1 == su2) {
            alert("修改成功，返回登录")
            parent.location.href = "${pageContext.request.contextPath}/jsp/login.jsp";
        }
    }

    function validate() {
        var pwd1 = document.getElementById("L_pass").value;
        var pwd2 = document.getElementById("L_repass").value;

        <!-- 对比两次输入的密码 -->
        if (pwd1 == pwd2) {
            document.getElementById("tishi").innerHTML = "<font color='green'></font>";
            document.getElementById("button").disabled = false;
        } else {
            document.getElementById("tishi").innerHTML = "<font color='red'>两次密码不相同</font>";
            document.getElementById("button").disabled = true;
        }
    }
</script>
</body>

</html>
