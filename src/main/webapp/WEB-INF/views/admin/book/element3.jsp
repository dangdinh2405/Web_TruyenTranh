<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<base href="${pageContext.servletContext.contextPath}/">
<link href="css/book.css" rel="stylesheet" />
<body itemscope itemtype="http://schema.org/WebPage">
<div id="breadcrumb" itemscope="" itemtype="https://schema.org/BreadcrumbList">
                        <span itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                            <a href="http://localhost:8080/Final1_war_exploded/home/index" itemprop="item">
                                <i class="fa-home"></i>
                                <span itemprop="name">Trang Chủ</span>
                                <meta itemprop="position" content="1">
                            </a>
                            <i class="fa-angle-right"></i>
                        </span>
	<span itemprop="itemListElement" itemscope="" itemtype="https://schema.org/ListItem">
                            <a href="http://localhost:8080/Final1_war_exploded/admin/view_book3" itemprop="item">
                                <span itemprop="name">Chuyện Con Mèo Dạy Hải Âu Bay</span>
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
				<img src="images/meodayhaiau.png" itemprop="image" class="cover" width="220" height="283" alt="Chú Chó Nhỏ Mang Giỏ Hoa Hồng">
				<span class="label-vip-1"></span>
				<span class="label-hot-0"></span>
				<span class="label-type-2"></span>
			</div>
			<div class="infos">
				<p class="author">
					Tác giả: Luis Sepúlveda
				</p>
				<p class="story_categories">
					<i class="fa-folder-open"></i>
					<span>
						<a href="admin/view_vanhoc" itemprop="genre" title="Văn học">Văn học</a>

					</span>
				</p>
				<p>
					<i class="fa-star"></i>
					Hoàn Thành
				</p>
				<p>
					<i class="fa-refresh"></i>
					12:11:23 15/11/2023
				</p>
			</div>
		</div>
		<div class="col2">
			<h1 itemprop="name" class="title">Chuyện Con Mèo Dạy Hải Âu Bay</h1>

			<div class="actions">
				<hr/>
				<a href="admin/view_read_book3" class="read-btn" title="Đọc Truyện">
					<i class="fa-doc-text"></i>
					Đọc Truyện
				</a>
			</div>
			<div class="description" itemprop="description">
				<b>【 Thiếu nhi- Văn học nước ngoài 】</b>
				“Có đàn cá trích ven cảng kìa,” hải âu trinh sát thông báo, và cả đàn chim từ ngọn Hải Đăng Cát Đỏ đón nhận tin vui với những tiếng rít sung sướng vang dài.<br/>
				<br/>
				Chúng đã bay liền một mạch sáu tiếng, và mặc dù những con hải âu hoa tiêu đã dò thấy luồng khí nóng có thể giúp cả đàn lướt bay thoải mái trên những con sóng, chúng vẫn cần nạp lại năng lượng – và còn gì tốt hơn là một bữa cá trích tươi ngon?<br/>
				<br/>
				Chúng đang bay trên cửa sông Elber, nơi dòng nước đổ vào biển Bắc. Từ không trung, chúng thấy những con tàu lần lượt nối đuôi nhau như đàn cá voi kiên nhẫn và kỷ luật đang chờ tới lượt mình ào ra biển lớn. Khi đã ra khơi, đám tàu sẽ xác định phương hướng rồi tỏa đi tới mọi cảng biển trên khắp hành tinh.<br/>
				<br/>
				Kengah, cô hải âu có bộ lông màu bạc, đặc biệt thích thú quan sát mấy lá cờ của đám tàu, vì cô biết mỗi lá cờ đại diện cho một cách nói, cách gọi tên cùng một thứ bằng nhiều ngôn ngữ khác nhau.<br/>
				<br/>
				“Loài người thật là vất vả với việc đó.” Kengah có lần từng nhận xét với một chị hải âu đồng hành. “Không như hải âu bọn mình, trên khắp thế giới cũng chỉ quang quác y như nhau.”<br/>
				<br/>
				“Cô nói đúng. Kỳ quặc nhất là đôi khi họ vẫn tìm được cách để hiểu nhau đấy,” chị bạn quàng quạc đáp lại.<br/>
				<br/>
				Qua khỏi mép nước, quang cảnh chuyển dần sang màu lục tươi sáng. Kengah có thể nhìn thấy bãi chăn gia súc khổng lồ điểm xuyết những bầy cừu đang gặm cỏ trong vòng tay bảo vệ của đê điều và những cánh quạt trễ nải trên cối xay gió.<br/>
				<br/>
				Theo sự hướng dẫn của hải âu hoa tiêu, đàn chim từ Hải Đăng Cát Đỏ đón lấy một luồng khí lạnh rồi lao xuống vũng cá trích. Một trăm hai mươi thân hình lao xuyên mặt nước như những mũi tên, và khi trở lại, con nào cũng có cá kẹp ngang mỏ.<br/>
				<br/>
				Cá trích ngon tuyệt. Ngon và béo ngậy. Đó chính xác là thứ chúng cần để hồi phục năng lượng trước khi tiếp tục hành trình tới Den Helder, nơi chúng sẽ nhập cùng đàn từ quần đảo Frisian.<br/>
			</div>
		</div>
	</div>
</div>
</body>
</html>