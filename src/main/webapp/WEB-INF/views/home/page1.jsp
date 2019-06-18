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
    <title>查询成绩</title>
    <link href="<%=basePath%>static/css/home_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=basePath%>static/js/jquery-1.8.3.min.js"></script>
</head>
<body id="page">
<h2>查询成绩</h2>
<table id="ibox" width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>学号</th>
        <th>班级</th>
        <th>科目</th>
        <th>分数</th>
        <th>操作</th>
    </tr>
</table>
<script type="text/javascript">
    function delSubmit(id) {
        var id = id;
        $.ajax({
            type:'post',
            url:'<%=basePath%>delect.action',
            data:"id="+id,
            dataType:"json",
            // contentType: "application/json; charset=utf-8",
            success:function (data) {
                window.location.href="<%=basePath%>getSiteInfo.action"
            },
            error:function(data){
                alert(data.msg);
            }
        })
    }
    $(function () {
        $.post("select.action", function (data) {
            var prows = "";
            var count = 1;
            for (var i = 0; i < data.length; i++) {
                for (var j = 0; j < data[i].score.length; j++) {
                    prows += "<tr><td>" + (count) + "</td><td>" + data[i].sname + "</td><td>" + data[i].sex + "</td><td>" + data[i].age + "</td><td>" + data[i].sno + "</td><td>" + data[i].score[j].sclass + "</td><td>" + data[i].score[j].subject + "</td><td>" + data[i].score[j].score + "</td><td><button type='submit' onclick='delSubmit("+data[i].score[j].id+")'>删除</button></td><tr>"
                    count++
                }
            }
            $("#ibox").append(prows);
        })
    })
</script>
</body>
</html>
