<%--
  Created by IntelliJ IDEA.
  User: 29590
  Date: 2022/8/4
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%--页面头部--%>
<table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td height="80" bgcolor="#FFFFFF"><img src="${path }/img/bannal.jpg" width="950" height="80"></td>
    </tr>
    <tr>
        <td height="24" align="right" bgcolor="#FFFFFF">
            <a href="${path }/admin/default.jsp">首页</a>
            <a href="${path }/SelectDepartmentAllServlet">部门查询</a>
            <a href="${path }/SelectJobAllServlet">职务查询</a>
            <a href="${path }/SelectEmployeeAllServlet?currentPage=1">员工查询</a>
            <a href="${path }/ExitServlet">退出登陆</a>
        </td>
    </tr>
    <tr>
        <td height="24" align="right" bgcolor="#0099CC">
            当前用户：<label>${sessionScope.adminName}</label>
            身份：<label>${sessionScope.adminLevel == 1?"管理员":"操作员"}</label>
        </td>
    </tr>
</table>

</body>
</html>
