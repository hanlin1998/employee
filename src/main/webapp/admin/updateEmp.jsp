<%--
  Created by IntelliJ IDEA.
  User: 29590
  Date: 2022/8/24
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>更新员工数据</title>
    <link rel="stylesheet" type="text/css" href="${path }/css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%--页面头部--%>
<%@include file="top.jsp" %>
<!-- 页面内容 -->
<table border="0" width="950" height="350" bgcolor="#ffffff" align="center">
    <tr>
        <td align="center" valign="top">
            <form name="form1" method="post" action="${path }/employee/updateEmp">
                <c:if test="${! empty requestScope.employee }">
                    <table width="500" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                        <tr>
                            <td height="24" colspan="2" align="center" bgcolor="#FFCC00">请修改员工信息</td>
                        </tr>
                        <tr>
                            <td width="120" height="24" bgcolor="#FFFFFF">员工姓名</td>
                            <td width="357" height="24" bgcolor="#FFFFFF">
                                <input name="empName" type="text" id="empName"
                                       value="${requestScope.employee.empName }">
                                *
                            </td>
                        </tr>
                        <tr>
                            <td height="24" bgcolor="#FFFFFF">邮箱地址</td>
                            <td height="24" bgcolor="#FFFFFF">
                                <input name="email" type="text" id="email" value="${requestScope.employee.email }">
                                *
                            </td>
                        </tr>
                        <tr>
                            <td height="24" bgcolor="#FFFFFF">电话号码</td>
                            <td height="24" bgcolor="#FFFFFF">
                                <input name="phone" type="text" id="phone"
                                       value="${requestScope.employee.phone }">
                            </td>
                        </tr>
                        <tr>
                            <td height="24" bgcolor="#FFFFFF">入职日期</td>
                            <td height="24" bgcolor="#FFFFFF">
                                <input value="<fmt:formatDate value="${requestScope.employee.hireDate }" pattern="yyyy-MM-dd"></fmt:formatDate>"
                                       name="hireDate" type="date" id="hireDate" onfocus="calendar()">
                                yyyy-mm-dd
                            </td>
                        </tr>
                        <tr>
                            <td height="24" bgcolor="#FFFFFF">职务</td>
                            <td height="24" bgcolor="#FFFFFF">
                                <c:if test="${! empty requestScope.jobs }">
                                    <select name="jobId" id="jobId">
                                        <!-- 循环输出所有的职务option -->
                                        <c:forEach items="${requestScope.jobs }" var="job">
                                            <c:choose>
                                                <c:when test="${job.jobId == requestScope.employee.jobId }">
                                                    <option selected="selected"
                                                            value="${job.jobId }">${job.jobTitle }</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${job.jobId }">${job.jobTitle }</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>
                                    工资范围
                                    <input value="${requestScope.employee.empJob.minSal }" type="text" id="minSal"
                                           size="10" readonly>
                                    ~
                                    <input value="${requestScope.employee.empJob.maxSal }" type="text" id="maxSal"
                                           size="10" readonly>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" bgcolor="#FFFFFF">工资</td>
                            <td height="24" bgcolor="#FFFFFF">
                                <input value="${requestScope.employee.salary }" name="salary" type="text" id="salary">
                                *
                            </td>
                        </tr>
                        <tr>
                            <td height="24" bgcolor="#FFFFFF">部门</td>
                            <td height="24" bgcolor="#FFFFFF">
                                <c:if test="${! empty requestScope.depts }">
                                    <select name="deptId" id="deptId">
                                        <!-- 循环输出所有的部门的option -->
                                        <c:forEach items="${requestScope.depts }" var="dept">
                                            <c:choose>
                                                <c:when test="${dept.deptId == requestScope.employee.deptId }">
                                                    <option selected="selected"
                                                            value="${dept.deptId }">${dept.deptName }</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${dept.deptId }">${dept.deptName }</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" colspan="2" align="center" bgcolor="#FFFFFF">
                                <input type="submit" name="Submit" value="更新">
                                <input type="button" name="Submit2" value="取消" onclick="history.back()">
                                <input name="empId" type="hidden" id="empId" value="${requestScope.employee.empId }">
                            </td>
                        </tr>
                    </table>
                </c:if>
            </form>
        </td>
    </tr>
</table>
<input id='path' value='${path }' type="hidden">
<%--页面尾部--%>
<%@include file="tail.jsp" %>
</body>
</html>
