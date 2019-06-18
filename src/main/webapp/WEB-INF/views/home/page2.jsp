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
<h2>添加学生</h2>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>学号</th>
        <th>操作</th>
    </tr>
    <tr>
        <td><input type="number" hidden="hidden" name="sid" id="sid"/>自动</td>
        <td>&nbsp;<input type="text" name="sname" id="sname"/></td>
        <td>&nbsp;<input type="text" name="sex" id="sex"/></td>
        <td>&nbsp;<input type="number" name="age" id="age"></td>
        <td>&nbsp;<input type="number" name="sno" id="sno"></td>
        <td>&nbsp;<button type="submit" onclick="addSubmit()">添加</button></td>
    </tr>
</table>
<script type="text/javascript">
    function addSubmit() {
        var params = {};
        params.sid=$("#sid").val();
        params.sname=$("#sname").val();
        params.sex=$("#sex").val();
        params.age=$("#age").val();
        params.sno=$("#sno").val();
        $.ajax({
            type:'post',
            url:'<%=basePath%>addStudent.action',
            data:params,
            dataType:"json",
            // contentType: "application/json; charset=utf-8",
            success:function (data) {
                // alert("添加学生信息成功！");
                window.location.href="<%=basePath%>getSiteInfo.action"
            },
            error:function(data){
                alert("出现异常情况，添加学生失败!");
            }
        })
    }
</script>
</body>
</html>
