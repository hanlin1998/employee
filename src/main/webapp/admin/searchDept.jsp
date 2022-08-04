<%--
  Created by IntelliJ IDEA.
  User: 29590
  Date: 2022/8/4
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>部门数据</title>
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
            <table width="90%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                <tr>
                    <th width="17%" bgcolor="#FFCC00">部门编号</th>
                    <th width="25%" bgcolor="#FFCC00">部门名称</th>
                    <th width="37%" bgcolor="#FFCC00">部门地址</th>
                    <th width="21%" bgcolor="#FFCC00">操作</th>
                </tr>
                <!-- 循环输出部门记录 -->
                <c:if test="${! empty requestScope.departments}">
                    <c:forEach var="dept" items="${requestScope.departments}">
                        <tr>
                            <th width="17%" bgcolor="#FFCC00">${dept.deptId}</th>
                            <th width="25%" bgcolor="#FFCC00">${dept.deptName}</th>
                            <th width="37%" bgcolor="#FFCC00">${dept.deptLocation}</th>
                            <th width="21%" bgcolor="#FFCC00">
                                <a href="">修改</a>
                                <a href="">删除</a>
                            </th>
                        </tr>
                    </c:forEach>
                </c:if>
            </table>
            <p><a href="${path}/admin/addDept.jsp">增加新部门</a></p>
        </td>
    </tr>
</table>
<%--页面尾部--%>
<%@include file="tail.jsp" %>
</body>
</html>
