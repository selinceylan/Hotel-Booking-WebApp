<div class="container">
	<!-- BREADCRUMB -->
	<section class="breadcrumb">
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<ul class="breadcrumb m-0 p-0 pt-2">

						<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
						<li class="breadcrumb-item"><a
							href="${contextRoot}/show/city/${city.id}/hotels">${city.name }</a></li>
						<li class="breadcrumb-item">${hotel.name }</li>


					</ul>
				</div>
			</div>
		</div>
	</section>
	<div class="col-md-9">
		<h1>${hotel.name }</h1>
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
	<!-- -------TABS -->
	<!-- Tabs -->
	<section id="tabs">
		<div class="container">
			<hr>
			<div class="row">
				<div class="col-xs-12 ">
					<nav>
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="true">General Information</a> <a
								class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
								href="#nav-profile" role="tab" aria-controls="nav-profile"
								aria-selected="false">Availability</a> <a class="nav-item nav-link"
								id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
								role="tab" aria-controls="nav-contact" aria-selected="false">Review</a>
							
						</div>
					</nav>
					<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">Et et
							consectetur ipsum labore excepteur est proident excepteur ad
							velit occaecat qui minim occaecat veniam. Fugiat veniam
							incididunt anim aliqua enim pariatur veniam sunt est aute sit
							dolor anim. Velit non irure adipisicing aliqua ullamco irure
							incididunt irure non esse consectetur nostrud minim non minim
							occaecat. Amet duis do nisi duis veniam non est eiusmod tempor
							incididunt tempor dolor ipsum in qui sit. Exercitation mollit sit
							culpa nisi culpa non adipisicing reprehenderit do dolore. Duis
							reprehenderit occaecat anim ullamco ad duis occaecat ex.</div>
						<div class="tab-pane fade" id="nav-profile" role="tabpanel"
							aria-labelledby="nav-profile-tab">Et et consectetur ipsum
							labore excepteur est proident excepteur ad velit occaecat qui
							minim occaecat veniam. Fugiat veniam incididunt anim aliqua enim
							pariatur veniam sunt est aute sit dolor anim. Velit non irure
							adipisicing aliqua ullamco irure incididunt irure non esse
							consectetur nostrud minim non minim occaecat. Amet duis do nisi
							duis veniam non est eiusmod tempor incididunt tempor dolor ipsum
							in qui sit. Exercitation mollit sit culpa nisi culpa non
							adipisicing reprehenderit do dolore. Duis reprehenderit occaecat
							anim ullamco ad duis occaecat ex.</div>
						<div class="tab-pane fade" id="nav-contact" role="tabpanel"
							aria-labelledby="nav-contact-tab">Et et consectetur ipsum
							labore excepteur est proident excepteur ad velit occaecat qui
							minim occaecat veniam. Fugiat veniam incididunt anim aliqua enim
							pariatur veniam sunt est aute sit dolor anim. Velit non irure
							adipisicing aliqua ullamco irure incididunt irure non esse
							consectetur nostrud minim non minim occaecat. Amet duis do nisi
							duis veniam non est eiusmod tempor incididunt tempor dolor ipsum
							in qui sit. Exercitation mollit sit culpa nisi culpa non
							adipisicing reprehenderit do dolore. Duis reprehenderit occaecat
							anim ullamco ad duis occaecat ex.</div>
						<div class="tab-pane fade" id="nav-about" role="tabpanel"
							aria-labelledby="nav-about-tab">Et et consectetur ipsum
							labore excepteur est proident excepteur ad velit occaecat qui
							minim occaecat veniam. Fugiat veniam incididunt anim aliqua enim
							pariatur veniam sunt est aute sit dolor anim. Velit non irure
							adipisicing aliqua ullamco irure incididunt irure non esse
							consectetur nostrud minim non minim occaecat. Amet duis do nisi
							duis veniam non est eiusmod tempor incididunt tempor dolor ipsum
							in qui sit. Exercitation mollit sit culpa nisi culpa non
							adipisicing reprehenderit do dolore. Duis reprehenderit occaecat
							anim ullamco ad duis occaecat ex.Et et consectetur ipsum
							labore excepteur est proident excepteur ad velit occaecat qui
							minim occaecat veniam. Fugiat veniam incididunt anim aliqua enim
							pariatur veniam sunt est aute sit dolor anim. Velit non irure
							adipisicing aliqua ullamco irure incididunt irure non esse
							consectetur nostrud minim non minim occaecat. Amet duis do nisi
							duis veniam non est eiusmod tempor incididunt tempor dolor ipsum
							in qui sit. Exercitation mollit sit culpa nisi culpa non
							adipisicing reprehenderit do dolore. Duis reprehenderit occaecat
							anim ullamco ad duis occaecat ex.</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- ./Tabs -->
</div>