<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<base href="${pageContext.servletContext.contextPath}/">
<link href="css/account.css" rel="stylesheet" />
<body itemscope itemtype="http://schema.org/WebPage">
<head>
    <title>Đăng ký</title>
</head>
<body>
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">ĐĂNG KÝ</h4>
        </div>
        <div class="modal-body">
            <form action="${pageContext.request.contextPath}/home/register" method="post">
                <input type="hidden" name="direct" value="1">
                <input type="text" id="username" name="username" placeholder="Username" required>
                <input type="password" id="password" name="password" placeholder="Mật khẩu" required>
                <label>    </label>
                <button class="normal-button" type="submit" name="register">Đăng Ký</button>
            </form>
            <c:if test="${not empty error}">
                <p style="color: red;">${error}</p>
            </c:if>
        </div>
    </div>
</div>
</body>
</body>
</html>






