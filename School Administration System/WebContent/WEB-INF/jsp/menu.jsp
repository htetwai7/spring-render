<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>" />
<style>

.navBg {
	background-color: rgba(255, 255, 255, 1);
}

.menuFont{
	font-weight: 700;
	background: #F8F9FA;
	color:  #FFB22D;
}
.search {
	height: 28px;
	background-color: rgba(236, 236, 236, 1);
	border-radius: 20px;
}


</style>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-light navBg">

		<ul class="navbar-nav">
			<li class="nav-item menuFont"><a class="nav-link menuFont" href="listGrade">Grade</a>
			</li>
			<li class="nav-item menuFont"><a class="nav-link menuFont" href="listClass">Class</a>
			</li>
			<li class="nav-item menuFont"><a class="nav-link menuFont" href="listStudent">Student
					Registration</a></li>
			<li class="nav-item menuFont"><a class="nav-link menuFont" href="listPayment">Student
					Academic</a></li>
			<li class="nav-item menuFont"><a class="nav-link menuFont" href="listHistory">Student
					Academic History</a></li>

		</ul>
		<ul class="navbar-nav ml-auto">
			<li>
				<form class="form-inline my-2 my-lg-0 search" action="searchStudent">
					<input class="form-control mr-sm-2 search" type="search"
					placeholder="Search Id" aria-label="Search" name="student_id">
				</form>
			</li>
			<li class="nav-item menuFont"><a class="nav-link menuFont" href="login">Logout</a>
			</li>
		</ul>
	</nav>
</body>
</html>