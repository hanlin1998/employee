<%--
  Created by IntelliJ IDEA.
  User: 29590
  Date: 2022/8/4
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户登陆</title>
    <link href="${path }/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<form name="form1" method="post" action="${path }/login">
    <table width="300" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#FF9900">
        <tr>
            <td height="24" colspan="2" align="center" bgcolor="#FFCC66">
                管理员登陆
            </td>
        </tr>
        <tr>
            <td width="77" height="24" align="center" bgcolor="#FFFFFF">
                管理账号
            </td>
            <td width="204" height="24" bgcolor="#FFFFFF">
                <input name="adminName" type="text" id="adminName" class="input1" value="${param.adminName}">
            </td>
        </tr>
        <tr>
            <td height="24" align="center" bgcolor="#FFFFFF">
                管理密码
            </td>
            <td height="24" bgcolor="#FFFFFF">
                <input name="adminPwd" type="password" id="adminPwd" class="input1" value="${param.adminPwd}">
            </td>
        </tr>
        <tr>
            <td height="24" align="center" bgcolor="#FFFFFF">
                管理级别
            </td>
            <td height="24" bgcolor="#FFFFFF">
                <input name="adminLevel" type="radio" value="1" checked>
                管理员
                <input name="adminLevel" type="radio" value="2">
                操作员
            </td>
        </tr>
        <tr>
            <td height="24" colspan="2" align="center" bgcolor="#FFFFFF">
                <input type="submit" value="进入系统">
            </td>
        </tr>
    </table>
    <h5 style="color: red;text-align: center;">${requestScope.str}</h5>
</form>

</body>
</html>
