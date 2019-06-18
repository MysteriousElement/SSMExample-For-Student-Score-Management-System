<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/5/22
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta name="renderer" content="webkit">
    <meta name="applicable-device" content="pc,mobile">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title> 注 册 | 个 人 信 息 管 理 系 统 </title>
    <link type="text/css" media="all" href="<%=basePath%>static/css/style.css" rel="stylesheet">
    <script type="text/javascript" src="<%=basePath%>static/js/jquery-1.8.3.min.js"></script>
</head>
<body>
<div class="htmleaf-container">
    <div class="wrapper">
        <div class="container">
            <div class="form">
                <h1>学生信息及成绩管理系统</h1>
                <p>作者 ： 彭超 ( Silly )</p><br><br>
                <p>管 理 员 账 号<input type="text" id="uname" name="username"/></p>
                <p>管 理 员 密 码<input type="password" id="upwd" name="password"/></p>
                <button type="submit" id="login-button" onclick="regSubmit()">&nbsp;注&nbsp;册&nbsp;账&nbsp;号&nbsp;</button>
            </div>
        </div>
        <ul class="bg-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
</div>
</body>
<script type="text/javascript">
    function regSubmit() {
        var params = {};
        params.username=$("#uname").val();
        params.password=$("#upwd").val();
        $.ajax({
            type:'post',
            url:'<%=basePath%>getRegist.action',
            data:params,
            dataType:"json",
            // contentType: "application/json; charset=utf-8",
            success:function (data) {
                window.location.href="<%=basePath%>getLog.action"
            },
            error:function(data){
                alert("出现异常情况，注册失败!");
            }
        })
    }
</script>
</html>
