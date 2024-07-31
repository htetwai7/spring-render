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

.tb {
	font-size: 12px;
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

.firstrow {
	padding-top: 5px;
	padding-bottom: 0px;
}

.paid {
	width: 50px;
	border: 1px solid green;
	border-radius: 10px;
	text-align: center;
	background-image: linear-gradient(to right, green, rgba(0, 128, 0, 0.3));
	color: #ffff;
	font-size: 10px;
}

.due {
	width: 50px;
	border: 0px solid red;
	border-radius: 10px;
	text-align: center;
	background-image: linear-gradient(to right, red, rgba(255, 0, 0, 0.3));
	color: #ffff;
	font-size: 10px;
	padding: 2px;
}
</style>

</head>

</head>
<body class="body-container container">
	<%@ include file="menu.jsp"%>
	<nav class="navbar navbar-expand-lg navbar-light navBg">

		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">

				<h5 class="header-title">
					<img
						src="https://files.axshare.com/gsc/E33S9V/94/35/95/9435951505654fcb943cc075a4e02f53/images/student_create_form/u2.svg?pageId=6763ed4d-0d87-4dfa-96ea-bfba4316f241">

					Welcome To JUDO School Administration System
				</h5>
			</ul>


		</div>

	</nav>

	<div class="d-flex firstrow">
		<div class="col-5">
			<p>All Students Academics</p>
		</div>
		<div class="col-5"></div>
		<div class="col-2 float-rigt">
			<a class="btn btn-success btn-sm text-sm mr-0" type="button"
				href="addNewAcademic">+ Add New Academic</a>
		</div>
	</div>
	<div class="container">
		<table class="table mt-1 tb">
			<tr class="thead">

				<th>Photo</th>
				<th>Student ID</th>
				<th>Name</th>
				<th>Fees</th>
				<th>Status</th>
				<th>Parent Mobile Number One</th>
				<th>Parent Mobile Number Two</th>
				<th>Email</th>
				<th>Action</th>
				<th></th>
			</tr>
			<c:forEach var="s" items="${sapList}">
				<tr>
					<td>${s.student.student_photo}</td>
					<td>${s.student.student_id}</td>
					<td>${s.student.name}</td>
					<td>${s.total_payment_amount}</td>
					<td>${s.payment_status}</td>
					<td>${s.student.phone_no}</td>
					<td>${s.student.father_phone_no}</td>
					<td>${s.student.email}</td>


					<td><c:choose>
							<c:when test="${s.payment_status == 'Paid'}">
								<!-- If payment status is paid, disable the payment icon -->
								<button class="btn text-success mx-0 p-0"
									style="display: block;" disabled>
									<i class="bi bi-file-earmark-text"> <!-- Your SVG icon code here -->
									</i>
									<p class="mb-0" style="font-size: 10px;">Payment</p>
								</button>
							</c:when>
							<c:otherwise>
								<!-- If payment status is not paid, enable the payment icon -->
								<a class="btn text-success mx-0 p-0" style="display: block;"
									href="searchStudentForPaymentPage?id=${s.academic_payment_id}">
									<i class="bi bi-file-earmark-text"> <!-- Your SVG icon code here -->
								</i>
									<p class="mb-0" style="font-size: 10px;">Payment</p>
								</a>
							</c:otherwise>
						</c:choose></td>

					<td><a id="button" class="btn text-success p-0"
						href="editAcademicPayment?id=${s.academic_payment_id}"> <i
							class="bi bi-pencil-square" onchange="checkPaid"> <svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-pencil-square"
									viewBox="0 0 16 16"> <path
										d="M15.502 1.94a.5.5 0 	0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
											<path fill-rule="evenodd"
										d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z" />
											 </svg></i>
					</a></td>

				</tr>

			</c:forEach>
		</table>

		<script>
			function check() {
				document.getElementById("on").style.visibility = "hidden";
				document.getElementById("off").style.visibility = "hidden";
			}
		</script>

	</div>
</body>
</html>