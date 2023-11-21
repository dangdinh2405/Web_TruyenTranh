<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<base href="${pageContext.servletContext.contextPath}/">
<link href="css/book.css" rel="stylesheet" />
<body itemscope itemtype="http://schema.org/WebPage">
<div id="breadcrumb" itemscope="" itemtype="https://schema.org/BreadcrumbList">
                        <span itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                            <a href="home/index" itemprop="item">
                                <i class="fa-home"></i>
                                <span itemprop="name">Trang Chủ</span>
                                <meta itemprop="position" content="1">
                            </a>
                            <i class="fa-angle-right"></i>
                        </span>
  <span itemprop="itemListElement" itemscope="" itemtype="https://schema.org/ListItem">
                            <a href="admin/view_story1" itemprop="item">
                                <span itemprop="name">Hạnh Phúc Tắc Đường</span>
                                <meta itemprop="position" content="2">
                            </a>
                        </span>
</div>
<div itemscope itemtype="http://schema.org/Book">
  <div id="story-detail" data-type="2">
    <meta itemprop="bookFormat" content="EBook">
    <meta itemprop="datePublished" content="2023-06-15">
    <div class="col1">
      <div class="thumb">
        <img src="images/hanhphuctacduong.jpg" itemprop="image" class="cover" width="220" height="283" alt="Hạnh Phúc Tắc Đường">
        <span class="label-vip-1"></span>
        <span class="label-hot-0"></span>
        <span class="label-type-2"></span>
      </div>
      <div class="infos">
        <p class="author">
          Tác giả: Vô Danh
        </p>
        <p class="story_categories">
          <i class="fa-folder-open"></i>
          <span>
						<a href="admin/view_truyenngan" itemprop="genre" title="Truyện ngắn">Truyện ngắn</a>

					</span>
        </p>
        <p>
          <i class="fa-eye"></i>
          179,950
        </p>
        <p>
          <i class="fa-star"></i>
          Hoàn Thành
        </p>
        <p>
          <i class="fa-refresh"></i>
          12:11:09 17/11/2023
        </p>
      </div>
    </div>
    <div class="col2">
      <h1 itemprop="name" class="title">Hạnh Phúc Tắc Đường</h1>

      <div class="actions">
        <hr/>
        <a href="admin/view_read_story2" class="read-btn" title="Đọc Truyện">
          <i class="fa-doc-text"></i>
          Đọc Truyện
        </a>
      </div>
      <div class="description" itemprop="description">
        <br/>
        Tôi không biết chắc mọi chuyện sẽ xảy ra thế nào, kể cả việc ngày mai mình còn sống hay không. Mặc nhiên, đặt tình cảm một cách dễ dàng và nhanh chóng có thể khiến cảm xúc của chúng ta được xoa dịu vào thời điểm đó. Nhưng lại làm cho tương lai trở nên bấp bênh nếu đó là một lựa chọn không phù hợp. <br/>
        <br/>
        Những người tôi đã gặp dạy cho tôi rất nhiều bài học về khái niệm yêu thương, về cách cắt nghĩa tình yêu thương và cả về sự sống trong những điều giản dị, không hối tiếc. Có lẽ vì vậy, những thứ dở dang luôn là
        những thứ khiến cho con người ta nhớ mãi.<br/>
        <br/>
        Suy cho cùng, bản thân chúng ta đều phải biết cách yêu thương để trở nên tốt đẹp. Nhưng đôi khi, cũng cần phải học cách chấp nhận trong yêu thương để hài lòng với cuộc sống của một kẻ-chưa-đủ-nhiều-may-mắn, miễn sao làm chủ được cảm xúc và nhận ra sự cần thiết,
        ít nhất là trong suy nghĩ của riêng mình.<br/>
        <br/>
        Tuổi trẻ mà, chỉ cần chúng ta thấy đúng, nghĩa là điều đó sẽ chẳng bao giờ là sai. Và hơn hết, nếu chúng ta từng thật lòng với nhau thì ngay từ lúc bắt đầu,
        chúng ta đã không có gì để hối tiếc.<br/>
      </div>
    </div>
  </div>
</div>
</body>
</html>