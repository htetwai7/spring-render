<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Login</title>
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap.min.css"/>" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>

<style type="text/css">
.btnColor {
	color: white;
	background-color: #474EFF;
}

.img {
	width: 80px;
	height: 29px;
}

.headerImgContainer {
	display: flex;
	justify-content: center;
}

.header {
	display: flex;
	justify-content: center;
	font-weight: 700;
	font-size: 35px;
}

.rImg {
	width: 477px;
	height: 349px;
	margin: 100px;
}

.cprImg {
	width: 45px;
	height: 16px;
}

.cprText {
	font-family: 'Poppins', sans-serif;
	font-size: 1rem;
	font-weight: 400;
	color: #8A8A8A;
}

.underLineImg {
	width: 92px;
	height: 2px;
}

.loginHereText {
	font-family: 'Poppins', sans-serif;
	font-weight: 400;
	font-style: normal;
	color: #8A8A8A;
}

.left {
	margin-top: 90px;
	padding: 15px;
	display: flex;
	justify-content: center;
	display: flex;
}

.rContainer {
	width: 678px;
	height: 570px;
	background-color: rgba(247, 254, 255, 1);
}

.rightText {
	font-family: 'Poppins', sans-serif;
	font-weight: 400;
	font-style: normal;
	font-size: 12px;
	color: #B2B2B2;
	text-align: right;
	line-height: 19px;
	display: flex;
	justify-content: center;
	margin-left: 200px;
	padding: 5px;
}

.rightHeaderText {
	font-family: 'Poppins Bold', 'Poppins Regular', 'Poppins', sans-serif;
	font-weight: 700;
	font-style: normal;
	color: #000000;
	display: flex;
	justify-content: center;
	margin-left: 200px;
	padding: 15px;
}

.rightBorderText {
	display: flex;
	justify-content: center;
	color: #B2B2B2;
	padding: 5px;
	font-size: 12px;
	margin-left: 500px;
	margin-top: 13px;
	width: 123px;
	height: 31px;
	background: inherit;
	background-color: rgba(255, 255, 255, 0);
	box-sizing: border-box;
	border-width: 1px;
	border-style: solid;
	border-color: rgba(130, 130, 130, 1);
	border-radius: 7px;
}

.inputForm {
	margin: 5px;
}

.leftButton {
	margin-top: 20px;
}
</style>

</head>

</head>
<body class="container">
	<div class="mainContainer row">
		<div class="col-4 lContainer">
			<div class="left">
				<div>
					<div class="headerImgContainer">
						<img class="img"
							src="https://files.axshare.com/gsc/E33S9V/94/35/95/9435951505654fcb943cc075a4e02f53/images/login/u8.png?pageId=7425b973-021d-4852-b77c-3785fa3f3b8c" />
					</div>
					<div>
						<h1 class="header">Welcome Back</h1>
						<span class="loginHereText"> <img class="underLineImg"
							src="https://files.axshare.com/gsc/E33S9V/94/35/95/9435951505654fcb943cc075a4e02f53/images/login/u11.svg?pageId=7425b973-021d-4852-b77c-3785fa3f3b8c" />
							Login Here <img class="underLineImg"
							src="https://files.axshare.com/gsc/E33S9V/94/35/95/9435951505654fcb943cc075a4e02f53/images/login/u11.svg?pageId=7425b973-021d-4852-b77c-3785fa3f3b8c" />
						</span>
					</div>
				</div>
			</div>
			<form action="login" method="post">
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Username</label>
					<input type="text" class="form-control inputForm"
						id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="Enter Username" name="username">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Password</label>
					<input type="password" class="form-control inputForm"
						id="exampleInputPassword1" placeholder="Enter Password"
						name="password">
				</div>
				<button type="submit" class="btn btnColor form-control">Login</button>
				<p class="leftButton">
					<span class="cprText">copyright © <img class="cprImg"
						src="https://files.axshare.com/gsc/E33S9V/94/35/95/9435951505654fcb943cc075a4e02f53/images/login/u8.png?pageId=7425b973-021d-4852-b77c-3785fa3f3b8c" />
						All rights reserved.
					</span>
				</p>
			</form>
		</div>
		<div class="col-8 rContainer">
			<div class="right">
				<p>
					<span>
						<div class="rightHeaderText">
							<img
								src="https://files.axshare.com/gsc/E33S9V/94/35/95/9435951505654fcb943cc075a4e02f53/images/login/u1.svg?pageId=7425b973-021d-4852-b77c-3785fa3f3b8c" />JUDO
							School Administration System
						</div>
						<div class="rightText">To get the opportunity to work in the
							international companies which are</div>
						<div class="rightText">established in Myanmar and all over
							the world.</div>
						<div class="rightBorderText">CONTACT US</div> <img class="rImg"
						src="https://files.axshare.com/gsc/E33S9V/94/35/95/9435951505654fcb943cc075a4e02f53/images/login/u4.png?pageId=7425b973-021d-4852-b77c-3785fa3f3b8c">

					</span>
				</p>
			</div>
		</div>
	</div>
</body>
</html>

