<%--
  Created by IntelliJ IDEA.
  User: 29590
  Date: 2022/8/4
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>添加部门</title>
    <link rel="stylesheet" type="text/css" href="${path }/css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%--页面头部--%>
<%@include file="top.jsp" %>
<%--页面内容--%>
<table border="0" width="950" height="350" bgcolor="#ffffff" align="center">
    <tr>
        <td align="center" valign="top">
            <form name="form1" method="post" action="${path}/department/addDept">
                <table width="500" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                    <tr>
                        <td height="24" colspan="2" align="center" bgcolor="#FFCC00">请填写新部门信息</td>
                    </tr>
                    <tr>
                        <td width="120" height="24" bgcolor="#FFFFFF">
                            部门编号
                        </td>
                        <td width="357" height="24" bgcolor="#FFFFFF">
                            <input name="deptId" type="text" id="department_id">
                            *
                            <span style="color: red;" id="point"></span>
                        </td>
                    </tr>
                    <tr>
                        <td height="24" bgcolor="#FFFFFF">
                            部门名称
                        </td>
                        <td height="24" bgcolor="#FFFFFF">
                            <input name="deptName" type="text" id="department_name">
                            *
                        </td>
                    </tr>
                    <tr>
                        <td height="24" bgcolor="#FFFFFF">
                            部门地址
                        </td>
                        <td height="24" bgcolor="#FFFFFF">
                            <input name="deptLocation" type="text" id="location_name">
                            *
                        </td>
                    </tr>
                    <tr>
                        <td height="24" colspan="2" align="center" bgcolor="#FFFFFF">
                            <input type="submit" value="提交">
                            <input type="button" value="取消" onclick="history.back();">
                        </td>
                    </tr>
                </table>
            </form>
            <h4 style="color: red;">${requestScope.str }</h4>
        </td>
    </tr>
</table>
<input id='path' value='${path }' type="hidden">

<%--页面尾部--%>
<%@include file="tail.jsp" %>
</body>
</html>
