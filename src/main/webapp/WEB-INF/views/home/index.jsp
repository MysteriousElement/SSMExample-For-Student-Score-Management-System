<%--
  Created by IntelliJ IDEA.
  User: PengChao
  Date: 2019/6/17
  Time: 9:14
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
    <script type="text/javascript" src="<%=basePath%>static/css/script.js"></script>
    <base target="frameBord" />
</head>

<body id="index">
<h1>学生信息及成绩管理界面</h1>
<div id="userInfo">您好，管理员:&nbsp;&nbsp;${user.username}</div>
<ul id="globalNav">
    <li><a href="getLogout.action" target="_top">退出</a></li>
    <li><a href="getPage6.action">修改管理信息</a></li>
    <li><a href="getPage5.action">修改学生成绩</a></li>
    <li><a href="getPage4.action">添加学生成绩</a></li>
    <li><a href="getPage3.action">修改学生信息</a></li>
    <li><a href="getPage2.action">添加学生信息</a></li>
    <li class="select"><a href="getPage1.action">查询学生成绩</a></li>
</ul>
<iframe id="frameBord" name="frameBord" frameborder="0" width="100%" height="100%" src="<%=basePath%>getPage1.action"></iframe>
</body>
</html>
