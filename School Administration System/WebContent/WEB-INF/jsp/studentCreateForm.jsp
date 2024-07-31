<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Student Create Form</title>
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

			<form class="form-inline my-2 my-lg-0" action="searchStudent">
				<input class="form-control mr-sm-2 search" type="search"
					placeholder="Search Id" aria-label="Search" name="student_id">
				<button class="btn btn-outline-dark my-2 my-sm-0 searchBtn"
					type="submit">Search</button>
			</form>


		</div>

	</nav>

	<form:form method="post" action="saveStudent">
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
						<td><input type="text" class="data" name="name" /></td>
					</tr>
					<tr>
						<td class="font">Address</td>
						<td><input type="text" class="data" name="address" /></td>
					</tr>
					<tr>
						<td class="font">NRC</td>
						<td><input type="text" class="data" name="nrc" /></td>
					</tr>
				</table>
			</div>


			<div class="table col-sm-3 ">
				<table class="table">
					<tr>
						<td class="font">Gender</td>
						<td><input type="text" class="data" name="gender" /></td>
					</tr>
					<tr>
						<td class="font">Phone Number</td>
						<td><input type="text" class="data" name="phone_no" /></td>
					</tr>
					<tr>
						<td class="font">Upload Student Photo</td>
						<td><input type="file" class="data student_photo"
							name="student_photo" /></td>
					</tr>

				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">

					<tr>
						<td class="font">Date of Birthday</td>
						<td><input type="text" class="data" name="date_of_birth" /></td>
					</tr>
					<tr>
						<td class="font">Nationality</td>
						<td><input type="text" class="data" name="nationality" /></td>
					</tr>

				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">

					<tr>
						<td class="font">Email</td>
						<td><input type="email" class="data" name="email" /></td>
					</tr>
					<tr>
						<td class="font">Religion</td>
						<td><input type="text" class="data" name="religion" /></td>
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
						<td><input type="text" class="data" name="father_name" /></td>
					</tr>
					<tr>
						<td class="font">Father Phone Number</td>
						<td><input type="text" class="data" name="father_phone_no" /></td>
					</tr>
					<tr>
						<td class="font">Present Address</td>
						<td><input type="text" class="data" name="present_address" /></td>
					</tr>
				</table>
			</div>


			<div class="table col-sm-3 ">
				<table class="table">
					<tr>
						<td class="font">Mother Name</td>
						<td><input type="text" class="data" name="mother_name" /></td>
					</tr>
					<tr>
						<td class="font">Father NRC</td>
						<td><input type="text" class="data" name="father_nrc" /></td>
					</tr>
				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">
					<tr>
						<td class="font">Father Occupation</td>
						<td><input type="text" class="data" name="father_occupation" /></td>
					</tr>

					<tr>
						<td class="font">Mother NRC</td>
						<td><input type="text" class="data" name="mother_nrc" /></td>
					</tr>
				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">
					<tr>
						<td class="font">Mother Occupation</td>
						<td><input type="text" class="data" name="mother_occupation" /></td>
					</tr>
					<tr>
						<td class="font">Permanent Address</td>
						<td><input type="text" class="data" name="permanent_address" /></td>
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
						<!-- Add a name attribute -->
						<c:forEach var="g" items="${grade}">
							<option class="font" value="${g.grade_id}">
								${g.name}</option>
							<!-- Add a value attribute -->
						</c:forEach>
					</select>
				</div>
				<%--This is Class showing with option --%>
				<div class="dropdown">
					<h5 class="gcFont">Select Class</h5>
					<select name="selectedClass">
						<!-- Add a name attribute -->
						<c:forEach var="c" items="${clas}">
							<option class="font" value="${c.class_id}">
								${c.name}</option>
							<!-- Add a value attribute -->
						</c:forEach>
					</select>
				</div>
			</div>

		</div>
	</form:form>

</body>
</html>