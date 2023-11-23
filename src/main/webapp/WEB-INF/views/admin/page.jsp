<%@ page import="com.example.model.User" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<base href="${pageContext.servletContext.contextPath}/">
<link href="css/admin.css" rel="stylesheet" />
<head>
    <title>User Management</title>
</head>
<body>
<h1>User Management</h1>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Password</th>
        <th>Action</th> <!-- New column for action buttons -->
    </tr>
    <%
        List<User> userlist = (List<User>) request.getAttribute("userList");
        if (userlist != null) {
            for (User user : userlist) {
    %>
    <tr>
        <td><%= user.getId() %> </td>
        <td><%= user.getUsername() %></td>
        <td><%= user.getPassword() %></td>
        <td>
            <!-- Edit button (you can link it to an edit page or trigger a modal) -->
            <button class="normal-button" onclick="window.location='${pageContext.request.contextPath}/admin/editUser/<%= user.getId() %>'">Edit</button>

            <!-- Delete button (you can use JavaScript or link it to a delete endpoint) -->
            <button class="delete-button" onclick="window.location='${pageContext.request.contextPath}/admin/deleteUser/<%= user.getId() %>'">Delete</button>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>

<!-- Add New User button -->
<button class="normal-button" onclick="window.location='${pageContext.request.contextPath}/admin/addUser'">Add New User</button>
</body>
</html>

