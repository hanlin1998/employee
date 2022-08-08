<%--
  Created by IntelliJ IDEA.
  User: 29590
  Date: 2022/8/8
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>添加职位</title>
    <link rel="stylesheet" type="text/css" href="${path }/css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<!-- 页面头部 -->
<%@include file="top.jsp" %>
<!-- 页面内容 -->
<table border="0" width="950" height="350" bgcolor="#ffffff"
       align="center">
    <tr>
        <td align="center" valign="top">
            <form method="post" action="${path }/job/addJob">
                <table width="500" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                    <tr>
                        <td height="24" colspan="2" align="center" bgcolor="#FFCC00">
                            请填写新职务类型信息
                        </td>
                    </tr>
                    <tr>
                        <td height="24" bgcolor="#FFFFFF">
                            职务名称
                        </td>
                        <td height="24" bgcolor="#FFFFFF">
                            <input name="jobTitle" type="text" id="job_title">
                            *
                        </td>
                    </tr>
                    <tr>
                        <td height="24" bgcolor="#FFFFFF">
                            最低工资
                        </td>
                        <td height="24" bgcolor="#FFFFFF">
                            <input name="minSal" type="text" id="min_salary">
                            *
                        </td>
                    </tr>
                    <tr>
                        <td height="24" bgcolor="#FFFFFF">
                            最高工资
                        </td>
                        <td height="24" bgcolor="#FFFFFF">
                            <input name="maxSal" type="text" id="max_salary">
                            *
                        </td>
                    </tr>
                    <tr>
                        <td height="24" colspan="2" align="center" bgcolor="#FFFFFF">
                            <input type="submit" value="提交">
                            <input type="button" value="取消" onclick="history.back()">
                        </td>
                    </tr>
                </table>
            </form>
            <h4 style="color: red;">${requestScope.str}</h4>
        </td>
    </tr>
</table>
<!-- 页面底部 -->
<%@include file="tail.jsp" %>
</body>
</html>
