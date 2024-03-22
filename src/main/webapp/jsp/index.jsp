<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>电影后台管理系统</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>

</head>
<body>

<%--上面的部分--%>
<div class="container">
    <div class="logo"><a href="index.jsp">电影后台管理系统</a></div>
    <ul class="layui-nav right">
        <li class="layui-nav-item">
            <a href="javascript:;">${sessionScope.userSession.username}</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a href="${pageContext.request.contextPath}/jsp/updatePassword.jsp">修改密码</a></dd>
                <dd><a href="${pageContext.request.contextPath}/jsp/login.jsp">退出</a></dd>
            </dl>
        </li>
    </ul>
</div>

<%--左侧内容--%>
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">

            <li>
                <a href="javascript:;">
                    <cite>新闻管理</cite>
                </a>
                <ul class="sub-menu">
                    <li><a _href="${pageContext.request.contextPath}/newsList.html"><cite>新闻信息管理</cite></a></li>
                    <li><a _href="${pageContext.request.contextPath}/newTypeList"><cite>新闻类别管理</cite></a></li>
                </ul>
            </li>


            <li>
                <a href="javascript:;">
                    <cite>影片管理</cite>
                </a>
                <ul class="sub-menu">
                    <li><a _href="${pageContext.request.contextPath}/movieList.html"><cite>影片管理</cite></a></li>
                    <li><a _href="${pageContext.request.contextPath}/movieTypeList"><cite>影片分类</cite></a></li>
                    <li><a _href="${pageContext.request.contextPath}/uploadMovie.jsp"><cite>影片上传</cite></a></li>
                </ul>
            </li>

        </ul>
    </div>
</div>

<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home">

            </li>
        </ul>

        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='welcome' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="page-content-bg"></div>

</body>
</html>
