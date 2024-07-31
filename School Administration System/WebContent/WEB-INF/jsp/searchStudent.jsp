<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
	integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="./style.css">

<style type="text/css">
#container {
	background: transparent;
	width: 100%;
	padding-top: 10px;
	display: flex;
	align-items: flex-start;
	justify-content: center;
}

.firstrow {
	background: #ffffff;
	padding-top: 5px;
	padding-bottom: 0px;
}

.secondrow {
	background: #e6e3e3;
	padding-top: 5px;
	padding-bottom: 0px;
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
}

.tb {
	font-size: 12px;
}

.image {
	width: 10px;
	height: 10px;
}
</style>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<!-- <p class="text-body-secondary">Secondary body text</p>
    <button type="button" class="btn btn-primary" >Save</button> -->
	<div class="container" id="container">
		<div class="row">
			<div>
				<div class="d-flex firstrow">
					<div class="col-5">
						<div class="row mt-1 mb-1">
							<div class="col-2">
								<i class="fa-solid fa-graduation-cap"
									style="font-size: 24px; text-align: center;"> <svg
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
										width="32" height="32" class="fa-solid fa-graduation-cap">
									<path
										d="M320 32c-8.1 0-16.1 1.4-23.7 4.1L15.8 137.4C6.3 140.9 0 149.9 0 160s6.3 19.1 15.8 22.6l57.9 20.9C57.3 229.3 48 259.8 48 291.9v28.1c0 28.4-10.8 57.7-22.3 80.8c-6.5 13-13.9 25.8-22.5 37.6C0 442.7-.9 448.3 .9 453.4s6 8.9 11.2 10.2l64 16c4.2 1.1 8.7 .3 12.4-2s6.3-6.1 7.1-10.4c8.6-42.8 4.3-81.2-2.1-108.7C90.3 344.3 86 329.8 80 316.5V291.9c0-30.2 10.2-58.7 27.9-81.5c12.9-15.5 29.6-28 49.2-35.7l157-61.7c8.2-3.2 17.5 .8 20.7 9s-.8 17.5-9 20.7l-157 61.7c-12.4 4.9-23.3 12.4-32.2 21.6l159.6 57.6c7.6 2.7 15.6 4.1 23.7 4.1s16.1-1.4 23.7-4.1L624.2 182.6c9.5-3.4 15.8-12.5 15.8-22.6s-6.3-19.1-15.8-22.6L343.7 36.1C336.1 33.4 328.1 32 320 32zM128 408c0 35.3 86 72 192 72s192-36.7 192-72L496.7 262.6 354.5 314c-11.1 4-22.8 6-34.5 6s-23.5-2-34.5-6L143.3 262.6 128 408z" />
									</svg></i>
							</div>
							<div class="col-10">
								<p class="fw-bold pt-1">Welcome to JUDO School
									Administration System</p>
							</div>
						</div>
					</div>
					<div class="col-2 float-left"></div>
				</div>


				<div class="d-flex firstrow"></div>

				<div class="container">
					<table class="table mt-1 tb">
						<tr class="thead">
							<th scope="col">Photo</th>
							<th scope="col">Student ID</th>
							<th scope="col">Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Date of Birth</th>
							<th scope="col">Parent Name</th>
							<th scope="col">Address</th>
							<th scope="col">Parent Mobile Number One</th>
							<th scope="col">Parent Mobile Number Two</th>
							<th scope="col">Email</th>
							<th scope="col">Created By</th>
							<th scope="col">Status</th>
						</tr>
						<tr>
								<td>${a.student_photo}</td>
								<td>${a.student_id}</td>
								<td>${a.name}</td>
								<td>${a.gender}</td>
								<td>${a.date_of_birth}</td>
								<td>${a.father_name}</td>
								<td>${a.address}</td>
								<td>${a.father_phone_no}</td>
								<td>${a.father_phone_no}</td>
								<td>${a.email}</td>
								<td>admin</td>
								<td>active</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>