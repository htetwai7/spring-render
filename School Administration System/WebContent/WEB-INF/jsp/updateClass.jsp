<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Edit Class</title>
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
	width:215px;
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

	<form:form method="post" action="updateClass">
		<nav class="navbar">
			<ul>
				<h5 class="header">Edit Class</h5>

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
		<h5 class="header">Class Information</h5>
		<div class="btnLine">
			<p>_</p>
		</div>
		<div class="row">
			<div class="table col-sm-3 ">
				<table class="table">
					<tr>
						<td class="font">Class Name</td>
						<td><input type="text" class="data" name="name" value="${ c.name}" maxlength="50"/></td>
					</tr>
				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">
					<tr>
						<td class="font">Class Code</td>
						<td><input type="text" class="data" name="code" value="${ c.code}" maxlength="10"/></td>
					</tr>
				</table>
			</div>
			<div class="table col-sm-3 ">
				<table class="table">
					<tr>
						<td class="font">Description</td>
						<td><input type="text" class="data" name="description" value="${ c.description}" maxlength="255"/></td>
						<td><input name="class_id" value="${ c.class_id}" hidden="true"/></td>
					</tr>
				</table>
			</div>
		</div>
	</form:form>
</body>
</html>

