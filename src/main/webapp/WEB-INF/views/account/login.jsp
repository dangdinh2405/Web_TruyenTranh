<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<base href="${pageContext.servletContext.contextPath}/">
<link href="css/account.css" rel="stylesheet" />
<body itemscope itemtype="http://schema.org/WebPage">
<head>
    <title>Đăng nhập</title>
</head>
<body>
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">ĐĂNG NHẬP</h4>
        </div>
        <div class="modal-body">
            <form action="${pageContext.request.contextPath}/home/login" method="post">
                <input type="text" id="username" name="username" placeholder="Username" required>
                <input type="password" id="password" name="password" placeholder="Mật khẩu" required>
                <label>    </label>
                <button class="normal-button" type="submit" name="login">Đăng Nhập</button>
            </form>
            <c:if test="${not empty error}">
                <p style="color: red;">${error}</p>
            </c:if>
        </div>
    </div>
    <footer>
        <span>Chưa có tài khoản? </span>
        <a rel="nofollow" title="đăng ký thành viên" href="http://localhost:8080/Final1_war_exploded/home/register"><b>Đăng Ký</b>
        </a>
    </footer>
</div>
</body>
</body>
</html>






