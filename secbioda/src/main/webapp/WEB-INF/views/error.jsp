<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />


<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SecBiOda-${title}</title>

<!-- Bootstrap core CSS -->

<link rel="stylesheet" href="${css}/style.css">
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<link href="${css}/bootstrap-datepicker.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">
<link rel="stylesheet" href="${ css}/effect.css">
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${css}/datatables.min.css" />

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
	type="text/javascript"></script>



<script>
	$(function() {
		$('.dates #usr1').datepicker({
			'format' : 'yyyy-mm-dd',
			'autoclose' : true
		});
	});
</script>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}'
</script>
</head>


<body>




	<div class="wrapper">

		<!-- NAVIGATION -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container">
				<a class="navbar-brand" href="${contextRoot }/home">SecBiOda</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarResponsive" aria-controls="navbarResponsive"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li id="home" class="nav-item "><a class="nav-link"
							href="${contextRoot }/home">Home <span class="sr-only">(current)</span>
						</a></li>
					</ul>
				</div>
			</div>
		</nav>




		<div class="content">

			<div class="container">
				<div class="row">
					<div class="col-xs-12"></div>
					<div class="jumbotron">
						<h1>${errorTitle}</h1>
						<hr />

						<blockquote>${errorDescription}</blockquote>

					</div>

				</div>

			</div>


		</div>



		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.min.js"></script>
		<script src="${js}/jquery.dataTables.js"></script>
		<script src="${js}/dataTables.bootstrap.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>
		<script src="${js}/bootstrap-datepicker.js"></script>
		<script type="text/javascript" src="${js}/datatables.min.js"></script>
		<!-- DataTable Plugin -->

		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>



</html>
