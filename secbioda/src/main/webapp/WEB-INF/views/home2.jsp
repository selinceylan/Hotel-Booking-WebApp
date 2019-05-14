<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="title">LET'S DISCOVER</div>
	<div class="subtitle">Reserve A Perfect Room</div>
</div>
<script>
	$(document).ready(function() {
		var mouseX, mouseY;
		var ww = $(window).width();
		var wh = $(window).height();
		var traX, traY;
		$(document).mousemove(function(e) {
			mouseX = e.pageX;
			mouseY = e.pageY;
			traX = ((4 * mouseX) / 570) + 40;
			traY = ((4 * mouseY) / 570) + 50;
			console.log(traX);
			$(".title").css({
				"background-position" : traX + "%" + traY + "%"
			});
		});
	});
</script>

<div class="container-city">

	<div class="row mt-40">
		<c:forEach items="${cities}" var="city">
			<div class="col-md-4 col-sm-6">
				<div class="box1">
					<img src="${city.imageURL }" alt="" style="width:500px;height:400px;">
					<h3 class="title">${city.name }</h3>
					<ul class="icon">
						<li><a href="${contextRoot}/show/city/${city.id}/hotels"><i class="fa fa-search"></i></a></li>
						
					</ul>
				</div>
			</div>

		</c:forEach>
	</div>
</div>