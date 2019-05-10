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

<title>Heroic Features - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->

<link rel="stylesheet" href="${css}/style.css">
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<link href="${css}/bootstrap-datepicker.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

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

</head>

<body>

	<!-- NAVIGATION -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Start Bootstrap</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>


	<!-- BOOKING SEARCH -->
	<section class="ftco-booking">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg text-lg-right">
					<h3 class="mb-4 mb-lg-0">Reserve A Perfect Room</h3>
				</div>
				<div class="col-lg-10">
					<form action="#" class="booking-form">
						<div class="d-lg-flex align-items-md-end">
							<div class="form-group mb-3 mb-lg-0 mr-4">
								<div class="dates">
									<label>Choose DOB</label> <input type="text"
										class="form-control" id="usr1" name="event_date"
										placeholder="YYYY-MM-DD" autocomplete="off">
								</div>
							</div>
							<div class="form-group mb-3 mb-lg-0 mr-4">
								<div class="dates">
									<label>Choose DOB</label> <input type="text"
										class="form-control" id="usr1" name="event_date"
										placeholder="YYYY-MM-DD" autocomplete="off">
								</div>


							</div>
							<div class="form-group mb-3 mb-lg-0 mr-4">
								<label for="#">Room Types</label>
								<div class="form-field">
									<div class="select-wrap">
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>
										<select name="" id="" class="form-control">
											<option value="">Suite</option>
											<option value="">Family Room</option>
											<option value="">Deluxe Room</option>
											<option value="">Classic Room</option>
											<option value="">Superior Room</option>
											<option value="">Luxury Room</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-group mb-3 mb-lg-0 mr-4">
								<label for="#">Adults</label>
								<div class="form-field">
									<div class="select-wrap">
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>
										<select name="" id="" class="form-control">
											<option value="">1</option>
											<option value="">2</option>
											<option value="">3</option>
											<option value="">4</option>
											<option value="">5</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-group mb-3 mb-lg-0 mr-4">
								<label for="#">Children</label>
								<div class="form-field">
									<div class="select-wrap">
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>
										<select name="" id="" class="form-control">
											<option value="">1</option>
											<option value="">2</option>
											<option value="">3</option>
											<option value="">4</option>
											<option value="">5</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-group">
								<input type="submit" value="Reserve"
									class="btn btn-primary py-3 px-4">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- BREADCRUMB -->
	<section class="breadcrumb">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="breadcrumb m-0 p-0 pt-2">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Fruit</a></li>
						<li class="breadcrumb-item active">Pears</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	
<!-- FILTER -->
	<section class="listings">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="row mb-3">
						<div class="col-md-12">
							<div class="card ">
								<div class="card-body">
									<div class="row">
										<div class="col-md-12">
											<h3>Search</h3>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<form>
												<div class="form-group">
													<select class="form-control" id="conditionsselect1">
														<option>Conditions</option>
														<option>New</option>
														<option>Used</option>
													</select>
												</div>
												<div class="form-group">
													<select class="form-control" id="conditionsselect2">
														<option>Body</option>
														<option>Compact</option>
														<option>Convertible</option>
														<option>Coupe</option>
														<option>Off-road</option>
														<option>Sedan</option>
													</select>
												</div>
												<div class="form-group">
													<select class="form-control" id="make1">
														<option>Make</option>
														<option>Ford</option>
														<option>Hyundai</option>
														<option>Kia</option>
														<option>Honda</option>
														<option>Skoda</option>
													</select>
												</div>
												<div class="form-group">
													<select class="form-control" id="make1">
														<option>Model</option>
														<option>Accord</option>
														<option>Camry</option>
														<option>Civic</option>
														<option>Rapid</option>
														<option>Octavia</option>
													</select>
												</div>
												<div class="form-group">
													<select class="form-control" id="mileage1">
														<option>Max Mileage</option>
														<option>< 5000</option>
														<option>5000-10000</option>
														<option>10000-15000</option>
														<option>15000-20000</option>
														<option>20000-25000</option>
														<option>> 25000</option>
													</select>
												</div>
												<div class="form-group">
													<select class="form-control" id="year1">
														<option>Year</option>
														<option>2000</option>
														<option>2001</option>
														<option>2002</option>
														<option>2003</option>
														<option>2004</option>
														<option>2005</option>
														<option>2006</option>
														<option>2007</option>
														<option>2008</option>
														<option>2009</option>
														<option>2010</option>
													</select>
												</div>
												<div class="form-group">
													<select class="form-control" id="make1">
														<option>Transmission</option>
														<option>Automatic</option>
														<option>Manaul</option>
														<option>Semi-Automatic</option>
													</select>
												</div>
												<hr>
												<button type="btn" class="btn btn-primary">Find Now</button>
												<button type="btn" class="btn btn-primary">Reset
													All</button>
												<div class="pb-3"></div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>






				<div class="col-md-9">
					<div class="row">
						<div class="col-md-12">
							<h2>Reno: 42 properties found</h2>
							<p>3 Reasons to Visit: gambling, entertainment & relaxation</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<ul class="nav nav-justified nav-pills">
								<li class="nav-item"><a class="nav-link active" href="#">Active</a>
								</li>
								<li class="nav-item"><a class="nav-link bg-light" href="#">Active</a>
								</li>
								<li class="nav-item"><a class="nav-link bg-light" href="#">Active</a>
								</li>
								<li class="nav-item"><a class="nav-link bg-light" href="#">Active</a>
								</li>
								<li class="nav-item"><a class="nav-link bg-light" href="#">Active</a>
								</li>

							</ul>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-md-12">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-3">
											<img
												src="https://dynamic.realestateindia.com/proj_images/project14122/proj_img-14122_1-small.jpg">
										</div>
										<div class="col-md-6  card-body">
											<div class="list-title">
												<ul class="list-inline list-unstyled">
													<li class="list-inline-item"><a href="#"><h4>Nugget
																Casino Resort</h4></a></li>
													<li class="list-inline-item text-warning"><i
														class="fa fa-star"></i><i class="fa fa-star"></i><i
														class="fa fa-star"></i><i class="fa fa-star"></i><i
														class="fa fa-star-half"></i></li>
													<li class="list-inline-item text-success"><i
														class="fa fa-thumbs-up"></i></li>
												</ul>
											</div>
											<div class="list-location">
												<a href="#"><i class="fa fa-map-marker"></i><small>
														Sparks, Reno – Show on map (4.7 km from center)</small> </a>
											</div>
											<div class="list-descrip">
												<small>This Sparks casino hotel is located in the
													Sierra Nevada Mountains. This resort features free airport
													shuttle services, a casino, a nightclub and 8 restaurants
													and bars. </small>
											</div>



										</div>
										<div class="col-md-3 border-left card-body">
											<ul class="list-unstyled">
												<li><h3>Very Good</h3></li>
												<li class="text-secondary"><small>8067 Reviews
												</small></li>
											</ul>
											<button type="button" class="btn btn-outline-primary">Book
												Now</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-md-12">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-3">
											<img
												src="https://dynamic.realestateindia.com/proj_images/project14122/proj_img-14122_1-small.jpg">
										</div>
										<div class="col-md-6  card-body">
											<div class="list-title">
												<ul class="list-inline list-unstyled">
													<li class="list-inline-item"><a href="#"><h4>Nugget
																Casino Resort</h4></a></li>
													<li class="list-inline-item text-warning"><i
														class="fa fa-star"></i><i class="fa fa-star"></i><i
														class="fa fa-star"></i><i class="fa fa-star"></i><i
														class="fa fa-star-half"></i></li>
													<li class="list-inline-item text-success"><i
														class="fa fa-thumbs-up"></i></li>
												</ul>
											</div>
											<div class="list-location">
												<a href="#"><i class="fa fa-map-marker"></i><small>
														Sparks, Reno – Show on map (4.7 km from center)</small> </a>
											</div>
											<div class="list-descrip">
												<small>This Sparks casino hotel is located in the
													Sierra Nevada Mountains. This resort features free airport
													shuttle services, a casino, a nightclub and 8 restaurants
													and bars. </small>
											</div>



										</div>
										<div class="col-md-3 border-left card-body">
											<ul class="list-unstyled">
												<li><h3>Very Good</h3></li>
												<li class="text-secondary"><small>8067 Reviews
												</small></li>
											</ul>
											<button type="button" class="btn btn-outline-primary">Book
												Now</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-md-12">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-3">
											<img
												src="https://dynamic.realestateindia.com/proj_images/project14122/proj_img-14122_1-small.jpg">
										</div>
										<div class="col-md-6  card-body">
											<div class="list-title">
												<ul class="list-inline list-unstyled">
													<li class="list-inline-item"><a href="#"><h4>Nugget
																Casino Resort</h4></a></li>
													<li class="list-inline-item text-warning"><i
														class="fa fa-star"></i><i class="fa fa-star"></i><i
														class="fa fa-star"></i><i class="fa fa-star"></i><i
														class="fa fa-star-half"></i></li>
													<li class="list-inline-item text-success"><i
														class="fa fa-thumbs-up"></i></li>
												</ul>
											</div>
											<div class="list-location">
												<a href="#"><i class="fa fa-map-marker"></i><small>
														Sparks, Reno – Show on map (4.7 km from center)</small> </a>
											</div>
											<div class="list-descrip">
												<small>This Sparks casino hotel is located in the
													Sierra Nevada Mountains. This resort features free airport
													shuttle services, a casino, a nightclub and 8 restaurants
													and bars. </small>
											</div>



										</div>
										<div class="col-md-3 border-left card-body">
											<ul class="list-unstyled">
												<li><h3>Very Good</h3></li>
												<li class="text-secondary"><small>8067 Reviews
												</small></li>
											</ul>
											<button type="button" class="btn btn-outline-primary">Book
												Now</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-md-12">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-3">
											<img
												src="https://dynamic.realestateindia.com/proj_images/project14122/proj_img-14122_1-small.jpg">
										</div>
										<div class="col-md-6  card-body">
											<div class="list-title">
												<ul class="list-inline list-unstyled">
													<li class="list-inline-item"><a href="#"><h4>Nugget
																Casino Resort</h4></a></li>
													<li class="list-inline-item text-warning"><i
														class="fa fa-star"></i><i class="fa fa-star"></i><i
														class="fa fa-star"></i><i class="fa fa-star"></i><i
														class="fa fa-star-half"></i></li>
													<li class="list-inline-item text-success"><i
														class="fa fa-thumbs-up"></i></li>
												</ul>
											</div>
											<div class="list-location">
												<a href="#"><i class="fa fa-map-marker"></i><small>
														Sparks, Reno – Show on map (4.7 km from center)</small> </a>
											</div>
											<div class="list-descrip">
												<small>This Sparks casino hotel is located in the
													Sierra Nevada Mountains. This resort features free airport
													shuttle services, a casino, a nightclub and 8 restaurants
													and bars. </small>
											</div>



										</div>
										<div class="col-md-3 border-left card-body">
											<ul class="list-unstyled">
												<li><h3>Very Good</h3></li>
												<li class="text-secondary"><small>8067 Reviews
												</small></li>
											</ul>
											<button type="button" class="btn btn-outline-primary">Book
												Now</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-md-12">
							<small> 42 properties found in Reno. </small>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<ul class="pagination">
								<li class="page-item disabled"><a class="page-link"
									href="#">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<!-- Footer -->
		<footer class="py-5 bg-dark">
			<div class="container">
				<p class="m-0 text-center text-white">Copyright &copy; Your
					Website 2019</p>
			</div>
			<!-- /.container -->
		</footer>
	</section>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>
	<script src="${js}/bootstrap-datepicker.js"></script>

</body>



</html>
