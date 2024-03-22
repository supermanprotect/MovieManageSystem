<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-L-admin1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
</head>

<body>

<div class="x-body">


    <xblock>
        <a href="${pageContext.request.contextPath}/jsp/addNewsType.jsp">
            <button class="layui-btn" type="button"><i class="layui-icon"></i>添加</button>
        </a>
    </xblock>
    <table class="layui-table">
        <thead>
        <tr>
            <th>编号</th>
            <!--            <th>标题</th>-->
            <th>类别</th>
            <!--            <th>内容</th>-->
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="newType" items="${newTypeList}" varStatus="i">
            <tr>
                <td align="center">${i.count}</td>
                <td align="center">${newType.type}</td>
                <td class="td-manage">
                    <center>
                        <a href="${pageContext.request.contextPath}/toUpdateNewTypePage/${newType.id}">
                            <button class="layui-btn layui-btn layui-btn-xs" type="submit">
                                <i class="layui-icon">&#xe642;</i>修改
                            </button>
                        </a>

                        <a href="${pageContext.request.contextPath}/delNewType/${newType.id}">
                            <button class="layui-btn-danger layui-btn layui-btn-xs" type="submit">
                                <i class="layui-icon">&#xe640;</i>删除
                            </button>
                        </a>
                    </center>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>

</html>
