<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<!-- CITY -->
						<div class="form-group mb-3 mb-lg-0 mr-4">
							<label for="#">City</label>
							<div class="form-field">
								<div class="select-wrap">
									<div class="icon">
										<span class="ion-ios-arrow-down"></span>
									</div>
									<select name="" id="" class="form-control">

										<c:forEach items="${cities}" var="city">
											<option value="">${city.name }</option>
										</c:forEach>
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