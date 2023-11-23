<%@ page import="com.example.model.User" %>
<!DOCTYPE html>
<html>
<base href="${pageContext.servletContext.contextPath}/">
<link href="css/edituser.css" rel="stylesheet" />
<body itemscope itemtype="http://schema.org/WebPage">
<head>
    <title>Add User</title>
</head>
<body>
<h1>Add User</h1>

<form action="${pageContext.request.contextPath}/admin/addUser" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username"><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password"><br>

    <input type="submit" value="Save">
</form>
</body>
</body>
</html>
