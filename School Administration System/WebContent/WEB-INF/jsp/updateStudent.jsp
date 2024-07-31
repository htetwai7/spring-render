<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Student Edit Form</title>
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
	height: 25px;
	border-style: solid;
	border-radius: 8px;
	border-color: white;
	display: flex;
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
	font-size: 13px;
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

	</div>

	</nav>

	<form method="post" action="updateStudent">
		<nav class="navbar">
		<ul>
			<h5 class="header">Register New Student</h5>
		</ul>
		<ul>
			<button type="submit" class="btn saveBtn">Save</button>
			<button type="reset" class="btn resetBtn">Reset</button>
		</ul>
		<img
			src="https://files.axshare.com/gsc/E33S9V/94/35/95/943595
					1505654fcb943cc075a4e02f53/images/student_create_form/u15.
					svg?pageId=6763ed4d-0d87-4dfa-96ea-bfba4316f241">

		</nav>

		<%-- Student Information is start here--%>
		<h5 class="header">Student Information</h5>
		<div class="btnLine">
			<p>_</p>
		</div>
		<div class="row">
			<div class="table col-sm-3 ">
				<table class="table">


					<tr>
						<td class="font">Student Name</td>
						<td><input type="text" class="data" value="${a.name}"
							name="name" /></td>
					</tr>
					<tr>
						<td class="font">Address</td>
						<td><input type="text" class="data" value="${a.address}"
							name="address" /></td>
					</tr>
					<tr>
						<td class="font">NRC</td>
						<td><input type="text" class="data" value="${a.nrc}"
							name="nrc" /></td>
					</tr>
				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">

					<tr>
						<td class="font">Gender</td>
						<td><input type="text" class="data" value="${a.gender}"
							name="gender" /></td>
					</tr>
					<tr>
						<td class="font">Phone Number</td>
						<td><input type="text" class="data" value="${a.phone_no}"
							name="phone_no" /></td>
					</tr>
					<tr>
						<td class="font">Student Photo</td>
						<td><input type="text" value="${a.student_photo }"
							name="student_photo" class="data student_photo" /></td>
					</tr>
				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">

					<tr>
						<td class="font">Date of Birthday</td>
						<td><input type="text" class="data"
							value="${a.date_of_birth}" name="date_of_birth" /></td>
					</tr>
					<tr>
						<td class="font">Nationality</td>
						<td><input type="text" class="data" value="${a.nationality}"
							name="nationality" /></td>
					</tr>
					<tr>
						<td class="font">Email</td>
						<td><input type="email" class="data" value="${a.email}"
							name="email" /></td>
					</tr>
				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">

					<tr>
						<td class="font">Religion</td>
						<td><input type="text" class="data" value="${a.religion}"
							name="religion" /></td>
					</tr>
					<tr>
						<td class="font">Student Id</td>
						<td><input type="text" class="data" value="${a.student_id}"
							name="student_id" readonly="true"/></td>
					</tr>

				</table>
			</div>
		</div>

		<%--parent information is start here --%>
		<h5 class="header">Parent Information</h5>
		<div class="btnLine">
			<p>_</p>
		</div>

		<div class="row">
			<div class="table col-sm-3 ">
				<table class="table">
					<tr>
						<td class="font">Father Name</td>
						<td><input type="text" class="data" value="${a.father_name}"
							name="father_name" /></td>
					</tr>
					<tr>
						<td class="font">Father Phone Number</td>
						<td><input type="text" class="data"
							value="${a.father_phone_no}" name="father_phone_no" /></td>
					</tr>
					<tr>
						<td class="font">Present Address</td>
						<td><input type="text" class="data"
							value="${a.present_address}" name="present_address" /></td>
					</tr>

				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">
					<tr>
						<td class="font">Mother Name</td>
						<td><input type="text" class="data" value="${a.mother_name}"
							name="mother_name" /></td>
					</tr>

					<tr>
						<td class="font">Father NRC</td>
						<td><input type="text" class="data" value="${a.father_nrc}"
							name="father_nrc" /></td>
					</tr>


				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">
					<tr>
						<td class="font">Father Occupation</td>
						<td><input type="text" class="data"
							value="${a.father_occupation}" name="father_occupation" /></td>
					</tr>
					<tr>
						<td class="font">Mother NRC</td>
						<td><input type="text" class="data" name="mother_nrc"
							value="${a.mother_nrc}" name="mother_nrc" /></td>
					</tr>

				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">
					<tr>
						<td class="font">Mother Occupation</td>
						<td><input type="text" class="data" name="mother_occupation"
							value="${a.mother_occupation}" name="mother_occupation" /></td>
					</tr>
					<tr>
						<td class="font">Permanent Address</td>
						<td><input type="text" class="data" name="permanent_address"
							value="${a.permanent_address}" name="permanent_address" /></td>
					</tr>
				</table>
			</div>
		</div>

		<%--This is Grade and Class showing with option --%>
		<div>
			<h5 class="header">Grade and Class Information</h5>
			<div class="btnLine">
				<p>_</p>
			</div>

			<div class="input-group-prepend">
				<%--This is Grade showing with option --%>
				<div class="dropdown">
					<h5 class="gcFont">Select Grade</h5>
					<select name="selectedGrade">
						<c:forEach var="g" items="${grade}">
							<option class="input_option font" value="${g.grade_id}"
								${g.grade_id == a.grade.grade_id ? 'selected' : ''}>${g.name}
							</option>
						</c:forEach>
					</select>
				</div>
				<%--This is Class showing with option --%>
				<div class="dropdown">
					<h5 class="gcFont">Select Class</h5>
					<select name="selectedClass">
						<c:forEach var="c" items="${clas}">
							<option class="input_option font" value="${c.class_id}"
								${c.class_id == a.clas.class_id ? 'selected' : ''}>${c.name}
							</option>
						</c:forEach>
					</select>
				</div>
			</div>
		</div>
	</form>
</body>
</html>

