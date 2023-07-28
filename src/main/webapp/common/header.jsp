<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><head>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Page Loader -->
<div id="loader-wrapper">
	<div id="loader"></div>

	<div class="loader-section section-left"></div>
	<div class="loader-section section-right"></div>

</div>
<nav class="navbar navbar-expand-lg">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"> <i class="fas fa-film mr-2"></i>
			ONLINE | ENTERTAINMENT
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link nav-link-1 active"
					aria-current="page" href="index.html">Trang Chủ</a></li>
				<li class="nav-item"><a class="nav-link nav-link-2"
					href="videos.html">Videos</a></li>
				<li class="nav-item"><a class="nav-link nav-link-3"
					href="about.html">Giới Thiệu</a></li>
				<li class="nav-item"><a class="nav-link nav-link-4"
					href="contact.html">Liên Hệ</a></li>
				<!-- Example single danger button -->
				<div class="btn-group">
					<button type="button" class="btn btn-danger dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">Tài Khoản</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">Đăng Nhập</a></li>
						<li><a class="dropdown-item" href="#">Quên Mật khẩu</a></li>
						<li><a class="dropdown-item" href="#">Đăng Ký</a></li>
						<li><a class="dropdown-item" href="#">Đăng Xuất</a></li>
						<li><a class="dropdown-item" href="#">Đổi Mật Khẩu</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Chỉnh Sửa Hồ Sơ</a></li>
					</ul>
				</div>
			</ul>
		</div>
	</div>
</nav>

<div class="tm-hero d-flex justify-content-center align-items-center"
	data-parallax="scroll"
	data-image-src="<c:url value = '/templates/user/img/img-06.jpg' />">
	<form class="d-flex tm-search-form">
		<input class="form-control tm-search-input" type="search"
			placeholder="Search" aria-label="Search">
		<button class="btn btn-outline-success tm-search-btn" type="submit">
			<i class="fas fa-search"></i>
		</button>
	</form>
</div>