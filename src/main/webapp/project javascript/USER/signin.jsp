<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<title>TRANG CHá»¦</title>
<link rel="stylesheet" href="../CSS/style-chitiet.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.10.2/css/all.css">
<link
	href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;600&display=swap"
	rel="stylesheet">
<script async defer crossorigin="anonymous"
	src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v7.0"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<script
	src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
	async defer>
</script>
</head>
<body>
	<div class="container-fluid header">
		<div class="container-fluid fixed-top">

			<nav class=" navbar  navbar-expand-lg">
				<a href="../index.html" class="navbar-brand">
					<div class="logo">
						<img src="../IMAGE/logo.png" alt="">
					</div>
				</a>
				<button class="navbar-toggler menu" data-target="#my-nav"
					data-toggle="collapse" aria-controls="my-nav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"> <i class="fas fa-bars"></i>
					</span>
				</button>
				<div id="my-nav" class="collapse navbar-collapse ">
					<ul class="navbar-nav mr-auto header-menu">
						<li class="nav-item active"><a class="nav-link"
							href="../index.html">TRANG CHá»¦</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							tabindex="-1" aria-disabled="false">Sáº¢N PHáº¨M HOT</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Äá»NG GIÃ 99K
						</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">99K</a></li>
								<li><a class="dropdown-item" href="#">199K</a></li>
								<li><a class="dropdown-item" href="#">299K</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link" href="#"
							tabindex="-1" aria-disabled="true">ÃO</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							tabindex="-1" aria-disabled="true">Äáº¦M</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							tabindex="-1" aria-disabled="true">VÃY</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							tabindex="-1" aria-disabled="true">QUáº¦N</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							tabindex="-1" aria-disabled="true">LIÃN Há»</a></li>


					</ul>
					<div class="mr-3 cart">
						<a href="#" onclick="checkLogin()"> <i class="fas fa-user"></i>
						</a> <a class="ml-3 mr-3" href="#"> <i
							class="fas fa-shopping-cart"></i>
						</a>

					</div>
					<div class="form-inline search">
						<input type="text" class="form-control" placeholder="Search..">
						<button type="submit" class="form-control btn">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</nav>

		</div>
	</div>
	<div class="container sign-up banner bg-white text-center login-form">

		<div class="register">
			<h1>ÄÄng Nháº­p</h1>
			<hr>
			<label for="username"><b>Há» vÃ  tÃªn (*) </b></label> <input
				class="email" type="text" id="hotend" placeholder="Há» tÃªn">
			<label for="username"><b>TÃªn ÄÄng nháº­p (*) </b></label> <input
				class="email mt-3" type="text" id="usernamed" placeholder="Username">
			<label for="username"><b>Máº­t kháº©u (*) </b></label> <input
				class="email mt-3" type="password" id="passwordd"
				placeholder="Máº­t Kháº©u"> <label for="username"><b>Email
					(*) </b></label> <input class="email mt-3" type="text" id="emaild"
				placeholder="Email">

			<div id="g-recaptcha" data-callback="recaptchaCallback"></div>
			<button type="submit" class="submit" id='submit-btn'
				onclick="checkSignin()">ÄÄNG KÃ</button>



<script>
var onloadCallback = function() {
    grecaptcha.render('g-recaptcha', {
        'sitekey' : '6Le8KB4nAAAAAAAgeSo4mD501aRbta-oUMv73bky'
    });
};
document.getElementById('login-form').addEventListener('submit', function(e) {
    e.preventDefault(); // NgÄn cháº·n hÃ nh vi máº·c Äá»nh cá»§a sá»± kiá»n submit
    
    // Kiá»m tra xem reCAPTCHA ÄÃ£ ÄÆ°á»£c xÃ¡c nháº­n
    if (grecaptcha && grecaptcha.getResponse().length !== 0) {
        // Láº¥y giÃ¡ trá» cá»§a tÃªn ÄÄng nháº­p vÃ  máº­t kháº©u
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;
        
        // Gá»­i yÃªu cáº§u ÄÄng nháº­p Äáº¿n mÃ¡y chá»§ (giáº£ sá»­ báº¡n cÃ³ má»t hÃ m xá»­ lÃ½ ÄÄng nháº­p táº¡i ÄÃ¢y)
        login(username, password);
    } else {
        alert('Vui lÃ²ng kiá»m tra reCAPTCHA');
    }
});
</script>

		</div>
		<div class="register login">
			<p id="thu">..........</p>
			<p>
				Báº¡n ÄÃ£ cÃ³ tÃ i khoáº£n?<a href="signup.html">ÄÄng Nháº­p.</a>
			</p>
		</div>

	</div>
	</div>

	</div>


	<div class="container-fluid bg-pink">



		<div class="container footer">
			<div class="row">
				<div class="col-md-3 time-footer">
					<h3>CÃ´ng ty TNHH Davis</h3>
					<p>Lá»ch lÃ m viá»c: T2 - T7</p>
					<p>SÃ¡ng: 8h - 12h</p>
					<p>Chiá»u : 13h30 - 17h30</p>
				</div>
				<div class="col-md-3">
					<h3>HÆ°á»ng dáº«n</h3>
					<ul class="link-footer">
						<li><a href="#">Thanh toÃ¡n</a></li>
						<li><a href="#">Kháº¯c laser lÃ  gÃ¬?</a></li>
						<li><a href="#">HÆ°á»ng dáº«n dÃ¡n da</a></li>
						<li><a href="#">HÆ°á»ng dáº«n vá» sinh Äá» da</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3>ThÃ´ng tin</h3>
					<ul class="link-footer">
						<li><a href="#">Blogs</a></li>
						<li><a href="#">Giá»i thiá»u DAVIS</a></li>
						<li><a href="#">LÆ°u Ã½ cáº§n biáº¿t</a></li>
						<li><a href="#">Äáº·c quyá»n KHTT</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3>LiÃªn há»</h3>
					<ul class="link-footer">
						<li><a href="#">ChÃ­nh sÃ¡ch Äá»i tráº£</a></li>
						<li><a href="#">ChÃ­nh sÃ¡ch váº­n chuyá»n</a></li>
						<li><a href="#">ChÃ­nh sÃ¡ch báº£o máº­t</a></li>
						<li><a href="#">Äiá»u khoáº£n dá»ch vá»¥</a></li>
					</ul>
				</div>
			</div>
		</div>
		<hr>
		<div class="container">
			<div class="row footer-contact">
				<div class="col-md-3">
					<i class="fa-solid fa-house-chimney"></i>
					<p>HÃ  Ná»i: Sá» 45 NgÃµ 199 Há» TÃ¹ng Máº­u, P. Cáº§u Diá»n, Q. Nam Tá»«
						LiÃªm</p>
				</div>
				<div class="col-md-3">
					<i class="fa-solid fa-house-chimney"></i>
					<p>Há» ChÃ­ Minh: 29 ÄÆ°á»ng Phan Chu Trinh, P Hiá»p PhÃº, Quáº­n 9</p>
				</div>
				<div class="col-md-3">
					<i class="fa-solid fa-envelope"></i>
					<p>
						Email:<br>info@hnoss.vn
					</p>
				</div>
				<div class="col-md-3">
					<i class="fa-solid fa-mobile"></i>
					<p>
						Phone:<br>08.3344.0608
					</p>
				</div>
			</div>
		</div>
		<hr>
		<div class="container footer-menu">
			<div class="row">
				<div class="col-md-4 text-start">
					<img src="IMAGE/dathongbao.webp" style="max-width: 150px;">
				</div>
				<div class="col-md-8 text-start">
					<p>Giáº¥y CNÄKKD: 0313026493 - NgÃ y Cáº¥p: 24/11/2014 - NÆ¡i Cáº¥p: Sá»
						káº¿ hoáº¡ch vÃ  Äáº§u tÆ°</p>
				</div>
			</div>
		</div>
	</div>

</body>
<script src="../JS/user.js"></script>
</html>