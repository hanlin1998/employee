<%--
  Created by IntelliJ IDEA.
  User: 29590
  Date: 2022/8/7
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>职位数据</title>
    <link rel="stylesheet" type="text/css" href="${path }/css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        function del(jobId) {
            //弹出确认框
            var flag = window.confirm("你确定要删除" + jobId + "号职务吗?");
            //如果单击确定，则执行DelJobsServlet，并且传入职务编号
            if (flag) {
                location.href = "${path}/job/deleteByPrimaryKey?jobId=" + jobId;
            }
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
            <table width="90%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                <tr>
                    <th width="16%" height="24" align="center" bgcolor="#FFCC00">
                        职务编号
                    </th>
                    <th width="21%" height="24" align="center" bgcolor="#FFCC00">
                        职务名称
                    </th>
                    <th width="23%" height="24" align="center" bgcolor="#FFCC00">
                        最低工资
                    </th>
                    <th width="24%" height="24" align="center" bgcolor="#FFCC00">
                        最高工资
                    </th>
                    <th width="16%" height="24" align="center" bgcolor="#FFCC00">
                        操作
                    </th>
                </tr>
                <!-- 显示职务数据 -->
                <c:if test="${! empty requestScope.jobs }">
                    <c:forEach items="${requestScope.jobs }" var="job">
                        <tr>
                            <td height="24" bgcolor="#FFFFFF">${job.jobId }</td>
                            <td height="24" bgcolor="#FFFFFF">${job.jobTitle }</td>
                            <td height="24" bgcolor="#FFFFFF">${job.minSal }</td>
                            <td height="24" bgcolor="#FFFFFF">${job.maxSal }</td>
                            <td height="24" bgcolor="#FFFFFF">
                                <a href="${path}/job/selectByPrimaryKey?jobId=${job.jobId }">修改</a>
                                <a href="javascript:del(${job.jobId })">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
            </table>
            <p><a href="${path }/admin/addJob.jsp">增加新职务种类</a></p>
        </td>
    </tr>
</table>
<%--页面尾部--%>
<%@include file="tail.jsp" %>
</body>
</html>
