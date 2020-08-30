<%--
  Created by IntelliJ IDEA.
  User: luiz
  Date: 30/08/2020
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Systems</title>
</head>
<body>
<h1>Systems Page</h1>

<hr>
<p>User: <security:authentication property="principal.username"/></p>
<br>
<br>
<p>Role(s): <security:authentication property="principal.authorities"/></p>
<hr>

<form:form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Logout"/>
</form:form>
</body>
</html>
