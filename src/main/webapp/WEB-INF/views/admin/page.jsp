<%@ page import="com.example.model.User" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
</head>
<body>
<h1>User Management</h1>

<%z`
    String error = (String) session.getAttribute("error");
    if (error != null ) {
%>
    <p style="color: red;">${error}</p>
<%
} else {
%>
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
                <a href="${pageContext.request.contextPath}/admin/editUser/<%= user.getId() %>">Edit</a>

                <!-- Delete button (you can use JavaScript or link it to a delete endpoint) -->
                <a href="${pageContext.request.contextPath}/admin/deleteUser/<%= user.getId() %>">Delete</a>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <a href="${pageContext.request.contextPath}/admin/addUser">Add New User</a>
<%
    }
%>
</body>
</html>
