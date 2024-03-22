<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title></title>
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
    <table class="layui-table" style="text-align: center">
        <thead>
        <tr>

            <th style="text-align: center">编号</th>
            <th style="text-align: center">封面</th>
            <th style="text-align: center">电影名</th>
            <th style="text-align: center">类别</th>
            <th style="text-align: center">主演</th>
            <th style="text-align: center">影片</th>
            <th style="text-align: center">操作</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="movie" items="${movieList}" varStatus="i">
            <tr>

                <td align="center">${i.count}</td>
                <td><img src="${movie.img}"/></td>
                <td>${movie.name}</td>
                <td>${movie.type}</td>
                <td>${movie.synopsis}</td>
                <td><%--插入视频--%>
                    <video src="${movie.video}" width="320" height="160" type="video/mp4" controls="controls"  >
                    </video>
                </td>
                <td class="td-manage">
                    <a href="${pageContext.request.contextPath}/delMovie/${movie.id}">
                        <button class="layui-btn-danger layui-btn layui-btn-xs" type="submit">
                            删除
                        </button>
                    </a>
                    <a href="${pageContext.request.contextPath}/toUpdateMoviePage/${movie.id}">
                        <button class="layui-btn layui-btn layui-btn-xs" type="submit">
                            修改
                        </button>
                    </a>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script>
    layui.use('laydate', function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });

    /*用户-停用*/
    function member_stop(obj, id) {
        layer.confirm('确认要停用吗？', function (index) {

            if ($(obj).attr('title') == '启用') {

                //发异步把用户状态进行更改
                $(obj).attr('title', '停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!', {icon: 5, time: 1000});

            } else {
                $(obj).attr('title', '启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!', {icon: 5, time: 1000});
            }

        });
    }

    /*用户-删除*/
    function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!', {icon: 1, time: 1000});
        });
    }


    function delAll(argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？' + data, function (index) {
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
</body>

</html>
