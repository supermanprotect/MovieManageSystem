<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>电影后台管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <style type="text/css">
        .container {
            width: 500px;
            margin: 0 auto;
        }

        .progress-bar {
            border: 1px solid #000;
            width: 30%;
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

    <form class="layui-form" method="post" action="${pageContext.request.contextPath}/addMovie">
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                电影名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="name" required lay-verify="required"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                电影类别
            </label>
            <div class="layui-input-inline">
                <select name="type">
                    <option value="">类别</option>
                    <c:forEach items="${sessionScope.movieTypeList}" var="movieType">
                        <option value="${movieType.type}">${movieType.type}</option>
                    </c:forEach>
                </select>
                <br>
            </div>
        </div>

        <div class="layui-form-item">
            <label for="desc" class="layui-form-label">
                主演
            </label>
            <div class="layui-input-inline">
                <input type="text" id="desc" name="synopsis" required lay-verify="required"
                       autocomplete="off" class="layui-input" placeholder="请输入内容">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">
            </label>
            <button class="layui-btn" lay-filter="add" lay-submit="">
                添加
            </button>
        </div>
    </form>


    <div class="layui-form-item">

        <%--                保存--%>
        <form class="layui-form" method="post" action="${pageContext.request.contextPath}/upload"
        >
            <div class="layui-upload">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="file" class="layui-btn layui-btn-warm" id="ipt-file"/><br>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="button" id="btn-upload" class="layui-btn layui-btn-normal">保存到本地</button>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <div class="progress-bar" style="padding:2px;border:solid green 2px;">
                    <div class="progress" id="progress"></div>
                </div>
                <p id="info"></p>

            </div>

        </form>
    </div>
</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
<script src="js/upload.js" charset="UTF-8"></script>
<script>
    layui.use('upload', function () {
        var $ = layui.jquery
            , upload = layui.upload;


        upload.render({
            elem: '#test1'
            , url: '/pictureUpload/'
            , before: function (obj) {
                //预读本地文件示例
                obj.preview(function (index, file, result) {
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            }
        });

    });
</script>

<script src="js/upload.js" charset="UTF-8"></script>
</body>

</html>