<%--
  Created by IntelliJ IDEA.
  User: 29590
  Date: 2022/8/24
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>添加员工</title>
    <link rel="stylesheet" type="text/css" href="${path}/css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../js/script.js"></script>
</head>
<body>
<%--页面头部--%>
<%@include file="top.jsp" %>
<!-- 页面内容 -->
<table border="0" width="950" height="350" bgcolor="#ffffff" align="center">
    <tr>
        <td align="center" valign="top">
            <form name="form1" method="post" action="${path }/employee/insertEmp">
                <table width="500" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                    <tr>
                        <td height="24" colspan="2" align="center" bgcolor="#FFCC00">请填写以下员工信息</td>
                    </tr>
                    <tr>
                        <td width="120" height="24" bgcolor="#FFFFFF">员工姓名</td>
                        <td width="357" height="24" bgcolor="#FFFFFF">
                            <input name="empName" type="text" id="empName">
                            *
                        </td>
                    </tr>
                    <tr>
                        <td height="24" bgcolor="#FFFFFF">邮箱地址</td>
                        <td height="24" bgcolor="#FFFFFF">
                            <input name="email" type="text" id="email">
                            *
                        </td>
                    </tr>
                    <tr>
                        <td height="24" bgcolor="#FFFFFF">电话号码</td>
                        <td height="24" bgcolor="#FFFFFF">
                            <input name="phone" type="text" id="phone">
                            例如123.456.789
                        </td>
                    </tr>
                    <tr>
                        <td height="24" bgcolor="#FFFFFF">入职日期</td>
                        <td height="24" bgcolor="#FFFFFF">
                            <input name="hireDate" type="date" id="hireDate" onfocus="calendar()">
                            例如yyyy-mm-dd
                        </td>
                    </tr>
                    <tr>
                        <td height="24" bgcolor="#FFFFFF">职务</td>
                        <td height="24" bgcolor="#FFFFFF">
                            <select name="jobId" id="jobId">
                                <option value="0">请选择职务</option>
                                <!-- 循环输出所有的职务option -->
                                <c:if test="${! empty requestScope.jobs}">
                                    <c:forEach items="${requestScope.jobs }" var="job">
                                        <option value="${job.jobId }">${job.jobTitle }</option>
                                    </c:forEach>
                                </c:if>
                            </select>
                            工资范围
                            <input name="minSal" type="text" id="minSal" size="10" readonly>
                            ~
                            <input name="maxSal" type="text" id="maxSal" size="10" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td height="24" bgcolor="#FFFFFF">工资</td>
                        <td height="24" bgcolor="#FFFFFF">
                            <input name="salary" type="text" id="salary">
                            *
                        </td>
                    </tr>
                    <tr>
                        <td height="24" bgcolor="#FFFFFF">部门</td>
                        <td height="24" bgcolor="#FFFFFF">
                            <select name="deptId" id="deptId">
                                <option value="0">请选择部门</option>
                                <!-- 循环输出所有的部门的option -->
                                <c:if test="${! empty requestScope.depts}">
                                    <c:forEach items="${requestScope.depts }" var="dept">
                                        <option value="${dept.deptId }">${dept.deptName }</option>
                                    </c:forEach>
                                </c:if>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td height="24" colspan="2" align="center" bgcolor="#FFFFFF">
                            <input type="submit" value="提交">
                            <input type="button" name="Submit2" value="取消" onclick="history.back()">
                        </td>
                    </tr>
                </table>
            </form>
            <h4 style="color: red;">${requestScope.str }</h4>
        </td>
    </tr>
</table>
<input id='path' value='${path}' type="hidden">

<%--页面尾部--%>
<%@include file="tail.jsp" %>
</body>
</html>
