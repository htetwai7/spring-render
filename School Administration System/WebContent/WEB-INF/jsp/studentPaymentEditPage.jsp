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

.data1 {
	font-size: 13px;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 125px;
	height: 25px;
	border-style: solid;
	border-radius: 8px;
	border-color: white;
}

.data2 {
	font-size: 13px;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100px;
	height: 25px;
	border-style: solid;
	border-radius: 10px;
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
	justify-content: center;
	text-align: center;
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
}

.resetBtn {
	color: white;
	width: 125px;
	display: inline-flex;
	justify-content: center;
	text-align: center;
	align-items: center;
	height: 28px;
	border-radius: 20px;
	padding: 15px;
	background-color: #FFB22D;
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

.amt {
	display: flex;
	width: 400px;
	height: 40px;
}

span {
	font-family: 'Poppins Medium', 'Poppins Regular', 'Poppins', sans-serif;
	font-weight: 500;
	font-style: normal;
	font-size: 18px;
	color: #000000;
}

.mainsection {
	display: flex;
}

textarea {
	border-width: 0px;
	position: absolute;
	width: 400px;
	height: 68px;
	font-size: 13px;
	display: flex;
	justify-content: center;
	align-items: center;
	border-style: solid;
	border-color: white;
}
</style>

</head>

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
	<%--  --%>
	<form:form method="post" action="updateAcademicPayment">
		<nav class="navbar">
			<ul>
				<h5 class="header">New Payment</h5>
			</ul>
			<ul>
				<button type="submit" class="btn saveBtn">Save</button>
				<a href="/" class="btn resetBtn"> <- Go Back</a>
			</ul>
			<img
				src="https://files.axshare.com/gsc/E33S9V/94/35/95/943595
					1505654fcb943cc075a4e02f53/images/student_create_form/u15.
					svg?pageId=6763ed4d-0d87-4dfa-96ea-bfba4316f241">

		</nav>
		<div class="mainsection row">
			<div class="container col-sm-6">
				<%-- Student Information is start here--%>
				<div class="row">
					<div class="col">
						<h5 class="header">Student Information</h5>
						<div class="btnLine">
							<p>_</p>
						</div>
					</div>

				</div>
				<div class="row">
					<div class="table col-sm-6">
						<table class="table row-sm-6">
							<tr>
								<td>Student Name<input type="text" class="data"
									value="${s.student.name }" /></td>
							</tr>

						</table>
					</div>

					<div class="table col-sm-6">
						<table class="table row-sm-6">
							<tr>
								<td>ID<input type="text" class="data"
									value="${s.student.student_id }" readonly></td>
							</tr>
						</table>
					</div>

				</div>

				<div class="u73_div">
					<div class="amt">
						<span>Total Amount of Tuition Fees&nbsp;:</span><input type="text"
							class="data2" name="total_tution_fee_amount"
							value="${s.total_tution_fee_amount }" readonly />
					</div>
					<div class="amt">
						<span>Total Discount Amount&nbsp; &nbsp; &nbsp; &nbsp;
							&nbsp; &nbsp;:</span><input type="text" class="data2" name="promotion"
							value="${s.promotion }" readonly />
					</div>
					<div class="amt">
						<span>Total Net Amount&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:</span><input type="text"
							class="data2" name="total_payment_amount"
							value="${s.total_payment_amount}" readonly />
					</div>
				</div>
			</div>
			<div class="container col-sm-6">

				<%-- Grade Information is start here--%>
				<div class="row-sm-6">
					<h5 class="header">Grade Information</h5>
					<div class="btnLine">
						<p>_</p>
					</div>
				</div>
				<div class="row">
					<div class="table col-sm-3">
						<table class="table row-sm-3">
							<tr>
								<td>Grade<input type="text" class="data1"
									value="${s.grade.name}" readonly /></td>
							</tr>

						</table>
					</div>

					<div class="table col-sm-3">
						<table class="table row-sm-3">
							<tr>
								<td>Class<input type="text" class="data1"
									value="${s.clas.name }" readonly /></td>
							</tr>
						</table>
					</div>

					<div class="table col-sm-3">
						<table class="table row-sm-3">
							<tr>
								<td>Amount<input type="text" class="data1"
									name="class_amount" value="${s.class_amount }" readonly /></td>
							</tr>
							<tr>
								<td><input type="text" class="data1"
									name="academic_payment_id" value="${s.academic_payment_id }"
									hidden="true" /></td>
							</tr>
						</table>
					</div>
					<div class="table col-sm-3">
						<table class="table row-sm-3">
							<tr>
								<td>Is_Pass? 
								<select class="data2" name="grade_status">
										<c:forEach var="status" items="${gs}">
											<option class="input_option" value="${status}"
												${status == s.grade_status ? 'selected' : ''}>${status}</option>
										</c:forEach>
								</select>

								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</form:form>
</body>
</html>