<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 16/11/2023
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<base href="${pageContext.servletContext.contextPath}/">
<link href="css/book.css" rel="stylesheet" />
<body itemscope itemtype="http://schema.org/WebPage">
<header id="main-header">
    <div class="container">
        <h1 class="logo">
            <a href="http://localhost:8080/Final1_war_exploded/home/index" title="Cái Tiệm Sách">Cái Tiệm Sách</a>
        </h1>
        <ul class="main-nav">
            <li>
                <a href="#" rel="nofollow">
                    <i class="fa-tags"></i>
                    Thể loại
                </a>
                <ul>
                    <li>
                        <a title="Văn học" href="admin/view_vanhoc">
                            <i class="fa fa-tags"></i>
                            Văn học
                        </a>
                    </li>
                    <li>
                        <a title="Truyện ngắn" href="admin/view_truyenngan">
                            <i class="fa fa-tags"></i>
                            Truyện ngắn
                        </a>
                    </li>
                    <li>
                        <a title="Tản văn" href="admin/view_tanvan">
                            <i class="fa fa-tags"></i>
                            Tản văn
                        </a>
                    </li>
                    <li>
                        <a href="admin/view_kynang" title="Kỹ năng">
                            <i class="fa fa-tags"></i>
                            Kỹ năng
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
        <div id="search_form" itemscope itemtype="https://schema.org/WebSite">
            <meta itemprop="url" content="http://localhost:8080/Final1_war_exploded/home/index" />
            <form id="searchForm" itemprop="potentialAction" itemscope itemtype="https://schema.org/SearchAction" role="search">
                <input itemprop="query" type="text" name="query" id="searchInput" placeholder="Nhập từ khóa tìm kiếm" />
                <button name="action_search" id="searchsubmit" type="submit" aria-label="Tìm kiếm"> <i class="fa fa-search"></i> </button>
            </form>
            <div id="search_result"></div>
        </div>
        <script>
            document.getElementById("searchForm").addEventListener("submit", function(event) {
                event.preventDefault(); // Ngăn chặn hành vi mặc định của form
                var query = document.getElementById("searchInput").value.toLowerCase(); // Chuyển đổi từ khóa tìm kiếm thành chữ thường
                switch (query) {
                    case "tobe":
                    case "tôbe":
                    case "tôi là tôbe":
                        window.location.href = "http://localhost:8080/Final1_war_exploded/admin/view_book";
                        break;
                    case "chú chó":
                    case "giỏ hoa hồng":
                    case "chú chó nhỏ mang giỏ hoa hồng":
                        window.location.href = "http://localhost:8080/Final1_war_exploded/admin/view_book2";
                        break;
                    case "con mèo":
                    case "hải âu":
                    case "chuyện con mèo dạy hải âu bay":
                        window.location.href = "http://localhost:8080/Final1_war_exploded/admin/view_book3";
                        break;
                    case "đắc nhân tâm":
                        window.location.href = "http://localhost:8080/Final1_war_exploded/admin/view_skill1";
                        break;
                    case "kẻ điên":
                    case "thiên tài":
                    case "thiên tài bên trái kẻ điên bên phải":
                        window.location.href = "http://localhost:8080/Final1_war_exploded/admin/view_skill2";
                        break;
                    case "tình cờ":
                    case "tình cờ gặp lại nhau":
                        window.location.href = "http://localhost:8080/Final1_war_exploded/admin/view_story1";
                        break;
                    case "hạnh phúc":
                    case "tắc đường":
                    case "hạnh phúc tắc đường":
                        window.location.href = "http://localhost:8080/Final1_war_exploded/admin/view_story2";
                        break;
                    case "nơi ấy còn bình yên":
                        window.location.href = "http://localhost:8080/Final1_war_exploded/admin/view_story3";
                        break;
                    case "khi crush thích mình":
                        window.location.href = "http://localhost:8080/Final1_war_exploded/admin/view_essay1";
                        break;
                    case "em xứng đáng được hạnh phúc":
                        window.location.href = "http://localhost:8080/Final1_war_exploded/admin/view_essay2";
                        break;
                    case "có một người":
                    case "duy nhất":
                    case "có một người từng là duy nhất":
                        window.location.href = "http://localhost:8080/Final1_war_exploded/admin/view_essay3";
                        break;
                    default:
                        alert("Không có kết quả cho từ khóa: " + query);
                        break;
                }
            });
        </script>
                <div id="userPanel"></div>
        </ul>
    </div>
</header>
<div id="main" class="main" data-type="home" role="main" itemscope itemprop="mainContentOfPage">
    <div class="container">
        <div class="main-col">
            <%@ include file="book/skill1.jsp" %>
        </div>
        <aside class="right-sidebar">
            <%@ include file="review.jsp" %>
        </aside>
    </div>
</div>
<footer>
    <div class="footer-content">
        <div class="footer-logo">
            <!-- Your logo goes here -->
            <img src="images/logo.png" alt="Your Logo">
        </div>
        <div class="footer-info">
            <!-- Your personal information goes here -->
            <p>Các thành viên nhóm 1:</p>
            <p>
                -----------------
            </p>
            <p>Trần Văn Bảo Duy</p>
            <p> MSSV: 21110155</p>
            <p>Nguyễn Kim Hồng</p>
            <p>MSSV: 21110829</p>
            <p>Đinh Đại Hải Đăng</p>
            <p>MSSV: 21110164</p>
        </div>
        <div class="footer-contact">
            <!-- Contact information goes here -->
            <p>Contact Us:</p>
            <p>
                -----------------
            </p>
            <p>Phone: 0335706358</p>
            <p>Email: 21110155@student.hcmute.edu.vn</p>
        </div>
    </div>
    <p class="copyright">&copy; 2023 HCMUTE. Thiết kế & Phát triển bởi Nhóm 1 - Lập Trình Web - HCMUTE.</p>
</footer>


</body>
</html>
