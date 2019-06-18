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
<h2>修改学生信息</h2>
<form id="searchForm" action="selScore.action">
    学号：
    <input name="sno" type="text" size="10" />
    <input name="Submit" type="submit" class="bt" value="查询" />
</form>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th>编号</th>
        <th>学号</th>
        <th>班级</th>
        <th>科目</th>
        <th>分数</th>
        <th>操作</th>
    </tr>
    <c:forEach var="score" items="${sessionScope.list}" varStatus="sco">
        <tr>
            <td><c:out value="${score.id}"/></td>
            <td>&nbsp;<input type="number" name="sno" id="sno${sco.count}" value="<c:out value="${score.sno}"/>"></td>
            <td>&nbsp;<input type="text" name="sclass" id="sclass${sco.count}" value="<c:out value="${score.sclass}"/>"></td>
            <td>&nbsp;<input type="text" name="subject" id="subject${sco.count}" value="<c:out value="${score.subject}"/>"></td>
            <td>&nbsp;<input type="number" name="score" id="score${sco.count}" value="<c:out value="${score.score}"/>"></td>
            <td>&nbsp;<button type="submit" onclick="modSubmit(${score.id},${sco.count})">修改</button></td>
        </tr>
    </c:forEach>
</table>
<script type="text/javascript">
    function modSubmit(id,count) {
        var params = {};
        params.id=id;
        params.sno=$("#sno"+count).val();
        params.sclass=$("#sclass"+count).val();
        params.subject=$("#subject"+count).val();
        params.score=$("#score"+count).val();
        $.ajax({
            type:'post',
            url:'<%=basePath%>modScore.action',
            data:params,
            dataType:"json",
            // contentType: "application/json; charset=utf-8",
            success:function (data) {
                // alert("修改学生成绩成功！");
                window.location.href="<%=basePath%>getSiteInfo.action"
            },
            error:function(data){
                alert("出现异常情况，修改成绩失败!");
            }
        })
    }
</script>
</body>
</html>
