<%--
  Created by IntelliJ IDEA.
  User: Alexander
  Date: 2019/5/25
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>

<body>
<form action="servlet/WriteCookie" method="post">
    <input type="text" name="name">
    <input type="submit" value="写入Cookie">
</form>
<form action="servlet/ReadCookie" method="post">
    <table>
        <tr>
            <td>name</td>
            <td>value</td>
        </tr>
        <tr>
            <td><%=request.getAttribute("name") %>
            </td>
            <td><%=request.getAttribute("value") %>
            </td>
        </tr>
    </table>
    <input type="submit" value="显示Cookie">
</form>
</body>
</html>
