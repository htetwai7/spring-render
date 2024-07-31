<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import = "java.util.*"%>
<html>
<head>
    <title>Student Academic Create Form</title>
    <link rel="stylesheet"
          href="<c:url value="/resources/css/bootstrap.min.css"/>" />
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
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
	margin: 0;
	padding: 0;
	background-color: rgba(244, 244, 244, 1);
	padding: 0;
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

<body class="body-container">
<%@ include file="menu.jsp"%>
<nav class="navbar navbar-expand-lg navbar-light navBg">
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <h5 class="header-title">
                <img src="https://files.axshare.com/gsc/E33S9V/94/35/95/9435951505654fcb943cc075a4e02f53/images/student_create_form/u2.svg?pageId=6763ed4d-0d87-4dfa-96ea-bfba4316f241">
                Welcome To JUDO School Administration System
            </h5>
        </ul>
    </div>
</nav>

<div class="container">
    <table class="table mt-1 tb container">
        <thead>
        <tr>
            <th>Photo</th>
            <th>Student ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Date Of Birth</th>
            <th>Parent Name</th>
            <th>Address</th>
            <th>Parent Mobile Number One</th>
            <th>Parent Mobile Number Two</th>
            <th>Email</th>
            <th>Created By</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="s" items="${sapList}">
            <tr>
                <td>${s.student.student_photo}</td>
                <td>${s.student.student_id}</td>
                <td>${s.student.name}</td>
                <td>${s.student.gender}</td>
                <td>${s.student.date_of_birth}</td>
                <td>${s.student.father_name}</td>
                <td>${s.student.address}</td>
                <td>${s.student.phone_no}</td>
                <td>${s.student.father_phone_no}</td>
                <td>${s.student.email}</td>
                <td>${s.grade.created_by}</td>
                <td>${s.grade.status }</td>
                <td>
                    <button type="button"
                            class="btn btn-success"
                            data-toggle="modal"
                            data-target="#myModal${s.academic_payment_id}">
                        View History
                    </button>
                </td>
            </tr>
            <!-- Modal -->
            <div class="modal fade" id="myModal${s.academic_payment_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Academic History</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body tb">
                            <!-- Populate with academic history data -->
                            <!-- Example: -->
                            <p>Academic Year: ${s.academic_year}</p>
                            <p>Grade: ${s.grade.name}</p>
                            <p>Class: ${s.clas.name}</p>
                            <p>Status: ${s.grade_status}</p>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
