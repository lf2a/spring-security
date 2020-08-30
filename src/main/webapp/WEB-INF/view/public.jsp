<%--
  Created by IntelliJ IDEA.
  User: luiz
  Date: 30/08/2020
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Public Page</title>
</head>
<body>
<h1>Public Page</h1>
<a href="${pageContext.request.contextPath}/showMyLoginPage">Login</a><br>
<security:authorize access="hasRole('EMPLOYEE')">
    <a href="${pageContext.request.contextPath}/employees">Employee Page</a><br>
</security:authorize>
<security:authorize access="hasRole('MANAGER')">
    <a href="${pageContext.request.contextPath}/leaders">Manager Page</a><br>
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
    <a href="${pageContext.request.contextPath}/systems">Admin Page</a><br>
</security:authorize>
</body>
</html>
