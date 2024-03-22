<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-L-admin1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/welcome.css">
</head>
<body>
<div class="x-body layui-anim layui-anim-up">
    <blockquote class="layui-elem-quote">管理员&nbsp;
        <span style="color : #0022ff ">${sessionScope.userSession.username}&nbsp;&nbsp;</span>
        ,你好,现在是北京时间:
        <%--        时间--%>
        <span id="dateTime" style="color: black"> </span>
    </blockquote>

    <h2>新闻数&nbsp;&nbsp;&nbsp;&nbsp;
        ${newsCount}</h2><br>

    <h2>电影数&nbsp;&nbsp;&nbsp;&nbsp;
        ${moviesCount}</h2><br>

    <h2>电影类别数&nbsp;&nbsp;&nbsp;&nbsp;
    ${movieTypeCount}</h2><br>

        <h2>新闻类别数&nbsp;&nbsp;&nbsp;&nbsp;
    ${newsTypeCount}</h2><br>
    <BR> <BR> <BR>
    <h1>Z&nbsp;&nbsp;&nbsp;Z&nbsp;&nbsp;&nbsp;U&nbsp;&nbsp;&nbsp;L&nbsp;&nbsp;&nbsp;I</h1>
</div>

<%--获取系统实时时间--%>
<script>
    Date.prototype.format = function (fmt) {
        var o = {
            "y+": this.getFullYear, //年
            "M+": this.getMonth() + 1, //月份
            "d+": this.getDate(), //日
            "h+": this.getHours(), //小时
            "m+": this.getMinutes(), //分
            "s+": this.getSeconds() //秒
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }
    setInterval("document.getElementById('dateTime').innerHTML = (new Date()).format('yyyy-MM-dd hh:mm:ss');", 1000);
</script>

</body>
</html>