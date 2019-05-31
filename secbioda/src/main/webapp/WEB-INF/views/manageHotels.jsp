<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="container">
	<div class="row">

		<c:if test="${not empty message }">
			<div class="col-xs-12">
				<div class="alert alert-success alert-dismissible">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					${message }
				</div>

			</div>
		</c:if>
		<div class="col-md-offset-2 col-md-8">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4>Hotel Management</h4>

				</div>
				<div class="panel-body">
					<!-- FORM ELEMENTS -->
					<!-- NAME -->
					<sf:form class="form-horizontal" modelAttribute="hotel"
						action="${contextRoot}/manage/hotels" method="POST">
						<div class="form-group">
							<label class="control-label col-md-4" for="name">Enter
								Hotel Name:</label>
							<div class="col-md-8">
								<sf:input type="text" path="name" id="name"
									placeholder="Hotel Name" class="form-control"></sf:input>
								<em class="help-block">Please enter Hotel name !</em>

							</div>

						</div>

						<!-- DISTANCE -->
						<div class="form-group">
							<label class="control-label col-md-4" for="distance">Enter
								Distance From Center:</label>
							<div class="col-md-8">
								<sf:input type="text" path="distance" id="distance"
									placeholder="Distance" class="form-control"></sf:input>
								<em class="help-block">Please enter distance !</em>

							</div>

						</div>
						<!-- ADDRESS -->
						<div class="form-group">
							<label class="control-label col-md-4" for="address">Enter
								The Hotel Address</label>
							<div class="col-md-8">
								<sf:input type="text" path="address" id="address"
									placeholder="Address" class="form-control"></sf:input>
								<em class="help-block">Please enter Address !</em>

							</div>

						</div>
						<!--CHECK IN -->
						<div class="form-group">
							<label class="control-label col-md-4" for="checkIn">Enter
								Check In</label>
							<div class="col-md-8">
								<sf:input type="text" path="checkIn" id="checkIn"
									placeholder="2:30PM-12:00 AM" class="form-control"></sf:input>
								<em class="help-block">Please enter Check In !</em>

							</div>

						</div>
						<!--CHECK OUT -->
						<div class="form-group">
							<label class="control-label col-md-4" for="checkOut">Enter
								Check Out</label>
							<div class="col-md-8">
								<sf:input type="text" path="checkOut" id="checkOut"
									placeholder="04:00 AM-10.00 AM" class="form-control"></sf:input>
								<em class="help-block">Please enter Check Out !</em>

							</div>

						</div>
						<!-- DESCRIPTION -->
						<div class="form-group">
							<label class="control-label col-md-4" for="description">Hotel
								Description:</label>
							<div class="col-md-8">
								<sf:textarea path="description" id="description" rows="4"
									placeholder="Write a description" class="form-control" />


							</div>

						</div>
						<!-- FACILITIES -->
						<div class="form-group">
							<label class="control-label col-md-4" for="facilities">Hotel
								Facilities:</label>
							<div class="col-md-8">
								<sf:textarea path="facilities" id="facilities" rows="4"
									placeholder="Write facilities" class="form-control" />


							</div>

						</div>
						<!--IMAGE-1 -->
						<div class="form-group">
							<label class="control-label col-md-4" for="imageURL1">Enter
								Image URL</label>
							<div class="col-md-8">
								<sf:input type="text" path="imageURL1" id="imageURL1"
									placeholder="Image URL" class="form-control"></sf:input>
								<em class="help-block">Please enter Image URL !</em>

							</div>

						</div>
						<!--IMAGE-2 -->
						<div class="form-group">
							<label class="control-label col-md-4" for="imageURL2">Enter
								Image URL</label>
							<div class="col-md-8">
								<sf:input type="text" path="imageURL2" id="imageURL2"
									placeholder="Image URL" class="form-control"></sf:input>
								<em class="help-block">Please enter Image URL !</em>

							</div>

						</div>
						<!--IMAGE-3 -->
						<div class="form-group">
							<label class="control-label col-md-4" for="imageURL3">Enter
								Image URL</label>
							<div class="col-md-8">
								<sf:input type="text" path="imageURL3" id="imageURL3"
									placeholder="Image URL" class="form-control"></sf:input>
								<em class="help-block">Please enter Image URL !</em>

							</div>

						</div>
						<!-- CITY-->
						<div class="form-group">
							<label class="control-label col-md-4" for="cityId">Select
								City:</label>
							<div class="col-md-8">
								<sf:select class="form-control" id="cityId" path="cityId"
									items="${cities }" itemLabel="name" itemValue="id" />



							</div>

						</div>
						<!-- STAR-->
						<div class="form-group">
							<label class="control-label col-md-4" for="star">Select
								Hotel Star:</label>
							<div class="col-md-8">
								<sf:input type="number" path="star" class="form-control"
									placeholder="Enter Star" />

							</div>
						</div>
				</div>
				<!-- RATING -->
				<div class="form-group">
					<label class="control-label col-md-4" for="rating">Enter
						Guest Rating</label>
					<div class="col-md-8">
						<sf:input type="text" path="rating" id="rating"
							placeholder="Rating" class="form-control"></sf:input>
						<em class="help-block">Please enter Rating !</em>

					</div>

				</div>
				<!-- SUBMIT -->
				<div class="form-group">
					<div class="col-md-offset-4 col-md-8">
						<div class="col-md-8">
							<input type="submit" name="submit" id="submit" value="Submit"
								class="btn btn-primary">
							<!-- Hidden Fields for hotels -->
							<sf:hidden path="id" />
							<sf:hidden path="ownerId" />
							<sf:hidden path="views" />

						</div>
					</div>
				</div>


				</sf:form>
			</div>




		</div>



	</div>


</div>

</div>