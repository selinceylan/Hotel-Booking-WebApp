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
</script>
</head>

<body>

	<div class="wrapper">
		<!-- NAVIGATION -->
		<%@include file="./shared/navbar.jsp"%>

		
		

		<div class="content">
			<!-- PAGE CONTENT -->

			<!-- Loading home content -->
			<c:if test="${userClickHome==true }">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Load only when user clicks list your property -->
			<c:if test="${userClickListyourproperty==true }">
				<%@include file="listyourproperty.jsp"%>
			</c:if>

			<!-- Load only when user clicks register -->
			<c:if test="${userClickRegister==true }">
				<%@include file="register.jsp"%>
			</c:if>

			<!-- Load only when user clicks sign in  -->
			<c:if test="${userClickSignin==true }">
				<%@include file="signin.jsp"%>
			</c:if>
		</div>
		<!-- FOOTER -->
		<%@include file="./shared/footer.jsp"%>


		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.min.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>
		<script src="${js}/bootstrap-datepicker.js"></script>

		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>

	</div>
</body>



</html>
