<%--
  Created by IntelliJ IDEA.
  User: 29590
  Date: 2022/8/22
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>员工数据</title>
    <link rel="stylesheet" type="text/css" href="${path }/css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        function page(pageNum) {
            document.location.href = "${path}/employee/selectAll?pageNum=" + pageNum;
        }
    </script>
</head>
<body>
<%--页面头部--%>
<%@include file="top.jsp" %>
<!-- 页面内容 -->
<table border="0" width="950" height="350" bgcolor="#ffffff" align="center">
    <tr>
        <td align="center" valign="top">
            <table width="98%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                <tr>
                    <td width="7%" height="24" bgcolor="#FFCC00">员工编号</td>
                    <td width="11%" height="24" bgcolor="#FFCC00">员工姓名</td>
                    <td width="16%" height="24" bgcolor="#FFCC00">邮箱</td>
                    <td width="16%" height="24" bgcolor="#FFCC00">电话</td>
                    <td width="12%" height="24" bgcolor="#FFCC00">入职时间</td>
                    <td width="9%" height="24" bgcolor="#FFCC00">职务</td>
                    <td width="9%" height="24" bgcolor="#FFCC00">工资</td>
                    <td width="7%" height="24" bgcolor="#FFCC00">部门</td>
                    <td width="13%" height="24" bgcolor="#FFCC00">操作</td>
                </tr>
                <c:if test="${! empty requestScope.pageInfo}">
                    <c:forEach items="${requestScope.pageInfo.list}" var="emp">
                        <tr>
                            <td height="24" bgcolor="#FFFFFF">${emp.empId }</td>
                            <td height="24" bgcolor="#FFFFFF">${emp.empName }</td>
                            <td height="24" bgcolor="#FFFFFF">${emp.email }</td>
                            <td height="24" bgcolor="#FFFFFF">${emp.phone }</td>
                            <td height="24" bgcolor="#FFFFFF">
                                <fmt:formatDate value="${emp.hireDate }" pattern="yyyy-MM-dd"></fmt:formatDate>
                            </td>
                            <td height="24" bgcolor="#FFFFFF">${emp.empJob.jobTitle }</td>
                            <td height="24" bgcolor="#FFFFFF">${emp.salary }</td>
                            <td height="24" bgcolor="#FFFFFF">${emp.empDept.deptName }</td>
                            <td height="24" bgcolor="#FFFFFF">
                                <a href="">修改</a>
                                <a href="">删除</a>
                                <a href="" target="_blank">照片</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
            </table>
            <!-- 分页显示用界面 -->
            <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="24" align="center">
                        共${requestScope.pageInfo.total}条数据，
                        每页显示${requestScope.pageInfo.pageSize}条，
                        共${requestScope.pageInfo.pages}页，
                        当前是第${requestScope.pageInfo.pageNum}页
                    </td>
                </tr>
                <tr>
                    <td height="24" align="center">
                        <a href="${path}/employee/selectAll?pageNum=1">首页</a>
                        <a href="javascript:page(${requestScope.pageInfo.prePage})">上页</a>
                        <a href="javascript:page(${requestScope.pageInfo.nextPage})">下页</a>
                        <a href="javascript:page(${requestScope.pageInfo.pages})">末页</a>
                    </td>
                </tr>
                <tr>
                    <td height="24" align="center">
                        <font color="red"><b>${requestScope.pageInfo.pageNum}</b></font>
                    </td>
                </tr>
            </table>
            <p><a href="${path}/AddEmployeeSelectServlet">增加新员工</a></p>
        </td>
    </tr>
</table>
<%--页面底部--%>
<%@include file="tail.jsp" %>
</body>
</html>
