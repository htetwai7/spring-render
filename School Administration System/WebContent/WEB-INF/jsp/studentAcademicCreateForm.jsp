<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Student Academic Create Form</title>
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
.data {
	font-size: 13px;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 190px;
	height: 25px;
	border-style: solid;
	border-radius: 8px;
	border-color: white;
}

.table td, .table tr {
	border: none;
	background-color: rgba(244, 244, 244, 1);
}

.header {
	font-style: italic;
}

.font {
	font-size: 12px;
}

.body-container {
	background-color: rgba(244, 244, 244, 1);
}

.header {
	font-size: 15px;
}

.file {
	font-size: 12px;
}

.navBg {
	background-color: rgba(255, 255, 255, 1);
}

.search {
	height: 28px;
	background-color: rgba(236, 236, 236, 1);
	border-radius: 20px;
}

.searchBtn {
	display: flex;
	justify-content: center;
	text-align: center;
	align-items: center;
	height: 28px;
	background-color: rgba(236, 236, 236, 1);
	border-radius: 20px;
}

.header-title {
	color: #00000;
	font-weight: 700;
}

.saveBtn {
	color: white;
	width: 75px;
	display: inline-flex;
	justify-content: center;
	text-align: center;
	align-items: center;
	height: 28px;
	border-radius: 20px;
	padding: 15px;
	background-color: #FFB22D;
	width: 75px;
}

.resetBtn {
	color: white;
	width: 75px;
	display: inline-flex;
	justify-content: center;
	text-align: center;
	align-items: center;
	height: 28px;
	border-radius: 20px;
	padding: 15px;
	background-color: #042954;
}

.btnLine {
	width: 50px;
	height: 4px;
	color: rgba(244, 244, 244, 1);
	background-color: #FFB22D;
}

.gcFont {
	font-size: 13px;
}

.border {
	display: flex;
	justify-content: center;
	text-align: center;
	align-items: center;
	font-size: 12px;
	width: 117px;
	height: 17px;
	border-radius: 10px;
}

.dropdown {
	padding: 7px;
}

.student_photo {
	font-size: 10px;
}

.white {
	color: #F4F4F4;
	background-color: transparent;
}

.paymentAmount {
	width: 250px;
	height: 25px;
}

.cashDown {
	width: 100px;
	height: 25px;
}

.remark {
	width: 500px;
	height: 60px;
}

<
script>function disableNumbers(enable) {
	var enableInput=document.getElementById("inputBlock");
	enableInput.disable.enable;
}
</
script
>
</style>
</head>

<body class="body-container container">
	
	<nav class="navbar navbar-expand-lg navbar-light navBg">

		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">

				<h5 class="header-title">
					<img
						src="https://files.axshare.com/gsc/E33S9V/94/35/95/9435951505654fcb943cc075a4e02f53/images/student_create_form/u2.svg?pageId=6763ed4d-0d87-4dfa-96ea-bfba4316f241">

					Welcome To JUDO School Administration System
				</h5>
			</ul>

			<form class="form-inline my-2 my-lg-0" action="searchStudent">
				<input class="form-control mr-sm-2 search" type="search"
					placeholder="Search Id" aria-label="Search" name="student_id">
			</form>


		</div>

	</nav>
		<nav class="navbar">
			<ul>
				<h5 class="header">Register New Student</h5>
			</ul>
			<img
				src="https://files.axshare.com/gsc/E33S9V/94/35/95/943595
					1505654fcb943cc075a4e02f53/images/student_create_form/u15.
					svg?pageId=6763ed4d-0d87-4dfa-96ea-bfba4316f241">

		</nav>

		<%-- Student Information is start here--%>

		<div class="row">
			<div class="table col-sm-3">
				<h5 class="header">Student Information</h5>
				<div class="btnLine">
					<p>_</p>
				</div>
				<table class="table row-sm-6">
					<tr>
						<td class="font">Search Student ID
							<form action="searchStudentForAcademic">
								<input type="search" class="data"
								required="true" name="student_id"/>
							</form>
						</td>
					</tr>
					<tr>
						<td class="font">Select Grade<input type="text" class="data"
							disabled/></td>
					</tr>
					<tr>
						<td class="font">Amount<input type="text" class="data"
							disabled/></td>
					</tr>
				</table>
			</div>

			<div class="table col-sm-3">
				<table class="table row-sm-6">
					<h5 class="header white">.</h5>
					<div class="btnLine white">
						<p>.</p>
					</div>
					<tr>
						<td class="font">Student<input type="text" class="data"
							disabled  /></td>
					</tr>
					<tr>
						<td class="font">Select Class<input type="text" class="data"
							disabled/></td>
					</tr>
					<tr>
						<td class="font">Academic Year<input type="text" class="data"
							disabled/></td>
					</tr>
				</table>
			</div>
			<div class="table col-sm-6 ">
				<h5 class="header ">Tution Fees</h5>
				<div class="btnLine">
					<p>_</p>
				</div>
				<table class="table row-sm-6">
					<tr>
						<td class="font"><br> 
							<select name="payment"
								id="payment" class="data cashDown" disabled>
									<optgroup label="payment method">
										<option value="volvo">Cash Down</option>
										<option value="saab">Banking</option>
									</optgroup>
							</select>
						</td>

					</tr>
					<tr>
						<td class="font">Payment Amount<input type="text"
							class="data paymentAmount" disabled/></td>
					</tr>
					<tr>
						<td>
							<form action="#">
								<input type="checkbox" disabled>
								<label for="vehicle1" class="font"> Has Promotion?</label><br>
							</form>
						</td>
					</tr>
					<tr>
						<td class="font">Remark<input type="text" class="data remark"
							disabled /></td>
					</tr>
				</table>
			</div>
			<h5>Total Amount of Tuition Fees:</h5>
		</div>

</body>
</html>