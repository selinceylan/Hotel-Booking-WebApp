<div class="container">
	<!-- BREADCRUMB -->
	<section class="breadcrumb">
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<ul class="breadcrumb m-0 p-0 pt-2">

						<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
						<li class="breadcrumb-item"><a
							href="${contextRoot}/show/city/${hotel.cityId}/hotels">${city.name}</a></li>
						<li class="breadcrumb-item">${hotel.name }</li>


					</ul>
				</div>
			</div>
		</div>
	</section>
	<div class="col-md-9">
		<h1>${hotel.name }</h1>
		<h3>Star:${hotel.star} Rating:${hotel.rating}</h3>
		<!-- -----------------IMAGE SLIDER------------------------- -->
		<div id="carousel1_indicator" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carousel1_indicator" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel1_indicator" data-slide-to="1"></li>
				<li data-target="#carousel1_indicator" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="${hotel.imageURL1 }"
						alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="${hotel.imageURL2 }"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="${hotel.imageURL3 }"
						alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carousel1_indicator"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carousel1_indicator"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<hr>
	<!-- -------TABS -->
	<div class="container">
		<ul class="nav nav-tabs" role="tablist">
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#home">General Information</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#menu1">Availability</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#menu2">Review</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<div id="home" class="container tab-pane active">
				<br>
				<div class="container">
					<div class="panel panel-default">
						<div class="panel-heading">Description</div>
						<div class="panel-body">${hotel.description}</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">Address</div>
						<div class="panel-body">${hotel.address}</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">Facilities</div>
						<div class="panel-body">${hotel.facilities}</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">Check In-Check Out</div>
						<div class="panel-body">Check In: ${hotel.checkIn} Check
							Out: ${hotel.checkOut}</div>
					</div>
				</div>
			</div>
			<div id="menu1" class="container tab-pane fade">
				<br>

				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="fld-193"
								title="Date of the first subject's first study visit">Check
								in date:</label> <input type="date" class="form-control" id="fld-193"
								name="fld-193" value="" placeholder="YYYY-MM-DD" /> <label
								for="fld-199"
								title="Date the report from PI to NIDCR_Reports is due.  Every 6-months unless otherwise specified.">Check
								out date:</label> <input type="date" class="form-control" id="fld-199"
								name="fld-199" value="" placeholder="YYYY-MM-DD" /> <br>


						</div>

					</div>
				</div>
				<table class="table">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col">Sleeps</th>
							<th scope="col">Room Types</th>
							<th scope="col">Number of Room</th>
							<th scope="col">Price</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${rooms }" var="room">
							<tr>
								<th><img src="${room.imageURL1}" height="100" width="100"></th>
								<th>${room.sleeps }</th>
								<th scope="col">${room.roomType}</th>
								<!-- Check quantity is equal zero or not -->
								<c:choose>
									<c:when test="${room.quantity <1}">
										<th scope="col"><span style="color:red">Sold Out</span></th>
										<th scope="col">${room.price }</th>
										<th scope="col"><button href="javascript:void(0)" type="submit"
										class="btn btn-success disabled"><strike>Check availability</strike></button></th>
									</c:when>
									<c:otherwise>
										<th scope="col">${room.quantity}</th>
										<th scope="col">${room.price }</th>
										<th scope="col"><button type="submit"
										class="btn btn-success">Check availability</button></th>
									</c:otherwise>
								</c:choose>
								
								
							</tr>
					</tbody>
				</table>
				</c:forEach>
			</div>



			<div id="menu2" class="container tab-pane fade">
				<br>
				<h3>REVIEW</h3>
				<p>Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
			</div>
		</div>
	</div>
</div>
