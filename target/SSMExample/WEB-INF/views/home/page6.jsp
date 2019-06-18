<%--
  Created by IntelliJ IDEA.
  User: PengChao
  Date: 2019/6/17
  Time: 9:18
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>管理界面</title>
    <link href="<%=basePath%>static/css/home_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=basePath%>static/js/jquery-1.8.3.min.js"></script>
</head>
<body id="page">
<h2>管理员信息修改</h2>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th>编号:</th><td><input type="number" readonly="true" name="uid" id="uid" value="${user.uid}"></td>
    </tr>
    <tr>
        <th>帐号:</th><td><input type="text" name="username" id="username" value="${user.username}"></td>
    </tr>
    <tr>
        <th>密码:</th><td><input type="password" name="password" id="password" value="${user.password}"></td>
    </tr>
    <tr>
        <th>邮箱:</th><td><input type="email" name="email" id="email" value="${user.email}"></td>
    </tr>
    <tr>
        <th>身份:</th><td><input type="text" name="type" id="type" value="${user.type}"></td>
    </tr>
    <tr>
        <td></td><td><button type="submit" onclick="modUser()">提交修改</button></td>
    </tr>
</table>
<script type="text/javascript">
    function modUser() {
        var params = {};
        params.uid=$("#uid").val();
        params.username=$("#username").val();
        params.paassword=$("#paassword").val();
        params.email=$("#email").val();
        params.type=$("#type").val();
        $.ajax({
            type:'post',
            url:'<%=basePath%>modUser.action',
            data:params,
            dataType:"json",
            // contentType: "application/json; charset=utf-8",
            success:function (data) {
                // alert("修改管理员信息成功！");
                window.location.href="<%=basePath%>getSiteInfo.action"
            },
            error:function(data){
                alert("出现异常情况，修改管理员信息失败!");
            }
        })
 }
</script>
</body>
</html>
