<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<base href="${pageContext.servletContext.contextPath}/">
<link href="css/account.css" rel="stylesheet" />
<body itemscope itemtype="http://schema.org/WebPage">
<head>
    <title>Chỉnh sửa thông tin</title>
<%--    <script>--%>
<%--        window.onload = function () {--%>
<%--            document.getElementById("username").disabled = true;--%>
<%--            console.log("Inside window.onload: " + document.getElementById("username").value);--%>
<%--        };--%>
<%--    </script>--%>
</head>
<body>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Chỉnh sửa thông tin</h4>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/home/edit" method="post">
                    <input type="text" id="username" name="username" value="${username}" placeholder="Username" required readonly>
                    <input type="password" id="password" name="newPassword" placeholder="Mật khẩu mới" required>
                    <label></label>
                    <button class="normal-button" type="submit" name="saveChanges">Lưu thay đổi</button>
                </form>

                <c:if test="${not empty error}">
                    <p style="color: red;">${error}</p>
                </c:if>

            </div>
            <div class="modal-body">
                <form id="deleteForm" action="${pageContext.request.contextPath}/home/delete" method="post">
                    <label></label>
                    <input type="hidden" id="usernameToDelete" name="usernameToDelete" value="${username}">
                    <button class="delete-button" type="button" onclick="confirmDelete()">Xóa tài khoản</button>
                </form>

                <script>
                    function confirmDelete() {
                        var isConfirmed = confirm("Bạn có chắc muốn xóa tài khoản này không?");
                        if (isConfirmed) {
                            // If confirmed, submit the form
                            document.getElementById("deleteForm").submit();
                        } else {
                            // If not confirmed, do nothing
                        }
                    }
                </script>
                <c:if test="${not empty error}">
                    <p style="color: red;">${error}</p>
                </c:if>
            </div>
        </div>
    </div>
</body>
</body>
</html>
