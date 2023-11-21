<%@ page import="com.example.model.User" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<h1>Edit User</h1>

<form:form action="${pageContext.request.contextPath}/admin/saveUser" method="post" modelAttribute="user">
    <form:hidden path="id"/>
    <label for="username">Username:</label>
    <form:input path="username"/><br>
    <label for="password">Password:</label>
    <form:input path="password" type="password"/><br>

    <input type="submit" value="Save">
</form:form>
</body>
</html>
